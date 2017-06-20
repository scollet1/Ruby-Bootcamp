# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    whatsyourname.rb                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 15:33:43 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 15:33:44 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

print "What's your first name? : "
first_name = gets.chomp + " "
print "What's your second name? : "
full_name = first_name + gets.chomp
puts "Well, pleased to meet you " + full_name + "."
