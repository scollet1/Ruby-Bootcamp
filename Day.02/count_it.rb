# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    count_it.rb                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 17:51:18 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 17:51:19 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

params = "Parameters : "

if ARGV.length == 0
  puts "none"
else
  puts params + ARGV.length.to_s
  ARGV.each do |i|
    puts i + " : " + i.length.to_s
  end
end
