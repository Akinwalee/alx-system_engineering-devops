#!/usr/bin/env ruby
# matches h......
 
sender = ARGV[0].scan(/from:([\W]?[\d|\w]*)/).join
receiver = ARGV[1].scan(/to:(\W?[\d|\w]*)/).join
flags = ARGV[2].scan(/flags:([\d\W]*)]/).join

puts "#{sender},#{receiver},#{flags}"
