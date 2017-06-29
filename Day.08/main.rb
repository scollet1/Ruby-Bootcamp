# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    main.rb                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/28 08:55:26 by scollet           #+#    #+#              #
#    Updated: 2017/06/28 08:55:28 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

=begin

require 'socket'

port = 4242
server = TCPServer.new('localhost', 4242)

system "clear"
puts "Server listening @ port: \033[35m4242\033[0m\n"
loop do

  # Wait for a connection
  socket = server.accept
  STDERR.puts "Incoming Request"

  # Read the HTTP request. We know it's finished when we see a line with nothing but \r\n
  http_request = ""
  while (line = socket.gets) && (line != "\r\n")
    http_request += line
  end
  STDERR.puts http_request
  socket.close
end

=end

require 'socket' # Provides TCPServer and TCPSocket classes
require 'digest/sha1'
require 'erb'
require 'sinatra'
#require 'security.rb'
#require '../Day.06/connect4.rb'

host = "0.0.0.0"
port = 4242

server = TCPServer.new(host, port)

=begin
request = "GET / HTTP/1.0\r\nHost:#{"0.0.0.0"}\r\n\r\n"
server.puts request
response = server.read
=end
def say port
  system "clear"
  puts "Server listening on port \033[35m#{port}\033[0m\n"
end

say port



def run server, port
  loop do

    # Wait for a connection
    socket = server.accept
    say port
    STDOUT.puts "Incoming Request"
    #socket.puts "Server listening on port 4242"

    erb = ERB.new(File.open("#{__dir__}/views/index.html.erb").read)
    socket.puts erb.result
  #width = ARGV[0].to_i
  #height = ARGV[1].to_i
  #play(0, Array.new(height){Array.new(width, ".")}, height, width)
  # Read the HTTP request. We know it's finished when we see a line with nothing but \r\n
  http_request = ""
  while (line = socket.gets) && (line != "\r\n")
    http_request += line
  end
  puts http_request
  # Grab the security key from the headers. If one isn't present, close the connection.
  if matches = http_request.match(/^Sec-WebSocket-Key: (\S+)/)
    websocket_key = matches[1]
    STDERR.puts "Websocket handshake detected with key: #{ websocket_key }"
  else
    STDERR.puts "Aborting non-websocket connection"
    socket.close
    next
  end


  response_key = Digest::SHA1.base64digest([websocket_key, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"].join)
  STDERR.puts "Responding to handshake with key: #{ response_key }"

  socket.write <<-eos
    HTTP/1.1 101 Switching Protocols
    Upgrade: websocket
    Connection: Upgrade
    Sec-WebSocket-Accept: #{ response_key }

    eos

  STDERR.puts "Handshake completed. Starting to parse the websocket frame."

  first_byte = socket.getbyte
  fin = first_byte & 0b10000000
  opcode = first_byte & 0b00001111

  raise "We don't support continuations" unless fin
  raise "We only support opcode 1" unless opcode == 1

  second_byte = socket.getbyte
  is_masked = second_byte & 0b10000000
  payload_size = second_byte & 0b01111111

  raise "All incoming frames should be masked according to the websocket spec" unless is_masked
  raise "We only support payloads < 126 bytes in length" unless payload_size < 126

  STDERR.puts "Payload size: #{ payload_size } bytes"

  mask = 4.times.map { socket.getbyte }
  STDERR.puts "Got mask: #{ mask.inspect }"

  data = payload_size.times.map { socket.getbyte }
  STDERR.puts "Got masked data: #{ data.inspect }"

  unmasked_data = data.each_with_index.map { |byte, i| byte ^ mask[i % 4] }
  STDERR.puts "Unmasked the data: #{ unmasked_data.inspect }"

  STDERR.puts "Converted to a string: #{ unmasked_data.pack('C*').force_encoding('utf-8').inspect }"

  socket.close
  system "clear"
  end
end

run server, port
