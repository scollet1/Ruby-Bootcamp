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

require 'socket'                # Get sockets from stdlib

port = 4242
server = TCPServer.open(port)   # Socket to listen on port 2000
system "clear"
puts "Server launched at \033[35m#{port}\033[0m"

loop {                  # Servers run forever
   Thread.start(server.accept) do |client|
   client.puts(Time.now.ctime) # Send the time to the client
   client.puts "Closing the connection. Bye!"
   client.close                # Disconnect from the client
   end
}
