# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    strings_arr.rb                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 17:16:28 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 17:16:29 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

key = "z"
num = 0

def check_z(lock, key)
  num = lock.scan(/(?=#{key})/).count
  return num
end

if ARGV.length != 1 || (this_many = check_z(ARGV[0], key)) == 0
  puts "none"
else print key * this_many + "\n"
end
