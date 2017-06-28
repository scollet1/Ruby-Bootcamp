# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    connect4.rb                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/18 14:11:47 by scollet           #+#    #+#              #
#    Updated: 2017/06/27 16:36:39 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

width = ARGV[0].to_i
height = ARGV[1].to_i
board = Array.new(height){Array.new(width, ".")}
#board.each {|a| p a}

#puts "\n"
#arr[5][4] = "x"
#arr.each {|a| p a}

def colorize(text, color_code)
  "#{color_code}#{text}e[0m"
end

def red(text); colorize(text, "e[31m"); end
def green(text); colorize(text, "e[32m"); end
def error
	puts "Press any key to continue."
end

def play(player, board, height, width)
	draw(board, height, width)
	print "Player #{player + 1}, enter a column: "
  	move = STDIN.gets.to_i - 1
  	if ((move > width) || (move < 0))
    	puts "Error, try again."
			error
			STDIN.gets
			play(player, board, height, width)
  	else
    	try(move, board, player, height, width)
  	end
end

def try(move, board, player, height, width)
	y = 0
	while y < height
		if board[0][move] != "."
			puts "Space filled, try again. (屎)"
			error
			STDIN.gets
			play(player, board, height, width)
		end
		if ((y == height - 1 && board[y][move] == ".") || (board[y + 1][move] != "."))
			if player == 0
				board[y][move] = "\033[31mx\033[0m"
				play(1, board, height, width)
			elsif player == 1
				board[y][move] = "\033[32mo\033[0m"
				play(0, board, height, width)
			end
		end
		y += 1
	end
=begin

	while y < height - 1
		if y == 0 && board[y][move] != "."
			puts "Space full, try again."
			play(player, board, height, width)
		elsif y == height || board[y + 1][move] != "."
			if player == 0
				board[y][move] = "x"
			elsif player == 1
				board[y - 3][move] = "o"
			end
		elsif board[y][move] == "."
			y += 1
		end
=end
end

def draw(board, height, width)
	system "clear"
  	y = 0
  	while y < height do
		print "|"
    	x = 0
    	while x < width do
      		print board[y][x]
      		x += 1
    	end
    	print "|\n"
    	y += 1
  	end
end

play(0, board, height, width)

=begin
def init(arr)
  arr.each do |y|
    y.each do |x|
      arr[y].x = "."
    end
    arr[y] = "\n"
  end
  p arr
  return arr
end

def display(arr)
  arr.each do |y|
    y.each do |x|
      print arr[y][x]
    end
    print "\n"
  end
end
def update(arr, targetx, targety, symbol)
  arr.each do |y|
    if y == targety
      y.each do |x|
        if x == targetx
          x = symbol
        end
      end
    end
  end
end
init(arr)
#display(arr)
arr[4][4] = "x"
#display(arr)
=end
