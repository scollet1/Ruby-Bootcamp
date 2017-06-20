# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    upcase_it.rb                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 16:07:49 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 16:07:50 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

if ARGV.length > 1 || ARGV.empty?
  puts "none"
else
  string_up = ARGV[0].upcase
  puts string_up
end
