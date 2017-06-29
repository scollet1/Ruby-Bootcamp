# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    save_marvin.rb                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/18 14:48:34 by scollet           #+#    #+#              #
#    Updated: 2017/06/18 14:48:36 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

class Hangman
  @@head = "O"
  @@body = "||"
  @@left = "/"
  @@right = "\\"
end

def mode
  system "clear"
  puts "Pick a difficulty\n
        1. Easy mode.\n
        2. Normal mode.\n
        3. HARD MODE.\n"
  mode = gets.to_i
  return (mode)
end

def findAword(arg)
  words = Array.new
  i = 0
  while i < arg.length do
    words[i] = arg[i]
    i += 1
  end
  word = words.sample
  return words
end

def play(mode, guesses = 7, actor)
  word = findAword(ARGV)
  unknown = Array.new(word.length, "_")
  begin
    draw(unknown, guesses, actor)
    guess(guesses)
    check()
  end while guesses > 0
end

def draw(unknown, guesses, actor)
  system "clear"
  if guesses == 6
    head = actor.head
  elsif guesses == 5
    la = actor.left
  elsif guesses == 4
    ra = actor.left
  elsif guesses == 3
    body = actor.left
  elsif guesses == 2
    left = actor.left
  elsif guesses == 1
    right = actor.right
  end
  puts "                    \n
             -------\\_     \n
          #{head}             |    \n
      #{la}#{body}#{ra}                 |    \n
        #{left}#{right}               |    \n
      –––––––––––––––––|    \n"
  puts unknown
  puts "You have #{guesses} guesses left."
end

actor = Hangman.new
play(mode, 7, actor)
