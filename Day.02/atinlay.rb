# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    atinlay.rb                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 17:57:01 by scollet           #+#    #+#              #
#    Updated: 2017/06/21 09:37:42 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

way = "-way"
ay = "-ay"
lmao = " lmao"

if ARGV.empty?
  puts "none"
else
  ARGV.each do |string|
    matches = string.scan(/^([^aeiouy]+)?(.+)/) { |first, second|
	  if first != nil
        puts second + first + ay
      elsif first == nil
        puts second + way
      else
        puts ay + lmao
      end
    }
  end
end
