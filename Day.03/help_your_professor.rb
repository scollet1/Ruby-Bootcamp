# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    help_your_professor.rb                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 22:16:56 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 22:16:57 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

def average_mark(grades)
  for grades.each do |i|
    i = grades.inject
  end
  return i / grades.length
end

class_ruby = {
  "Sam" => 42,
  "Gwyn" => 1,
  "Ruby" => 100
}

puts "Average mark for the Ruby Class: #{average_mark class_ruby}."
