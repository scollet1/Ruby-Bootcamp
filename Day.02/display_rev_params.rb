# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    display_rev_params.rb                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 16:55:01 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 16:55:02 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

if ARGV.length < 2
  puts "none"
  exit
else
  arr_rev = ARGV.reverse
  arr_rev.each do |i| puts i
  end
end
