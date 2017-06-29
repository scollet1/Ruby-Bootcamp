# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    my_first_method.rb                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 22:02:04 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 22:02:04 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

def upcase_ten(string)
  if string.length > 10
    return string.upcase
  else
    return nil
  end
end

if ARGV.length != 1
  puts "none"
else
  puts upcase_ten(ARGV[0])
end
