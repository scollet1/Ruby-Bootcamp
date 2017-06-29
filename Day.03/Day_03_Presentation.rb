# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Day_03_Presentation.rb                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/21 10:34:31 by scollet           #+#    #+#              #
#    Updated: 2017/06/21 10:34:32 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

=begin

require 'pry'

def basic_method
  5.upto(10) do |i|
    puts i
  end
end

basic_method

=end

def hash_method(parameter)

  ary = Array.new

  parameter.each do |key, value|
    if value.to_s == "value"
      ary.push(key)
    elsif value.to_s == "7"
      ary.push(key)
    end
  end

  if ary.length == 0
    ary.push("none")
  end
  return ary

end

some_hash = {
  "Hash Key" => :value,
  "Another Key" => :value,
  "Keys can have the same" => :value,
  "They can also have different" => "7"
}

p hash_method(some_hash)
