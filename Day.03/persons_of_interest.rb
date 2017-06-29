# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    persons_of_interest.rb                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/21 10:54:01 by scollet           #+#    #+#              #
#    Updated: 2017/06/21 10:54:02 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

def great_births(wis)
  new_hash = wis.sort_by { |key, value| value[:year_of_birth].to_i }
  new_hash.each do |key, value|
    puts "#{value[:name]} is a great person born in #{value[:year_of_birth]}"
  end
end

women_in_science = {
  :ada => { :name => "Ada Lovelace", :year_of_birth => "1815" },
  :cecilia => { :name => "Cecila Payne", :year_of_birth => "1900" },
  :lise => { :name => "Lise Meitner", :year_of_birth => "1878" },
  :grace => { :name => "Grace Hopper", :year_of_birth => "1906" }
}

great_births(women_in_science)
