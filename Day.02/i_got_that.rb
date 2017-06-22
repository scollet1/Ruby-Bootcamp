# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    i_got_that.rb                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/17 16:59:14 by scollet           #+#    #+#              #
#    Updated: 2017/06/17 16:59:15 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/ruby

print "What you gotta say? : "
i_got_that = "I got that! Anything else? : "
stop = "STOP!\n"

begin
  got = gets
  if got == "\n"
    print "What? "
  elsif got != stop
    print i_got_that
  end
end while got != stop
