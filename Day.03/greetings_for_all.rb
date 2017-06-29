# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    greetings_for_all.rb                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 22:06:08 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 22:06:09 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

def greetings(name = "noble stranger")
  if name.is_a? String
    puts "Greetings " + "#{name}!"
  else
    puts "Error! That doesn't sound like a name."
  end
end

if ARGV.length != 1
  puts "none"
else
  greetings(ARGV[0])
end
