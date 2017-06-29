# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    family_affairs.rb                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/21 09:55:38 by scollet           #+#    #+#              #
#    Updated: 2017/06/21 09:55:39 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

def find_the_gingers(family)

  array = Array.new

  family.each do |key, value|
    if value.to_s == "red"
      array.push(key)
    end
  end

  if array.length > 0
    return array
  else
    array.push("none")
  end
  return array

end

family_fam = {
  "Wedding" => :red,
  "persn" => :red
}

p find_the_gingers(family_fam)
