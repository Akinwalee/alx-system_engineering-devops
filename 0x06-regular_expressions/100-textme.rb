#!/usr/bin/env ruby
# matches h......
 
sender = ARGV[0].scan(/from:([\w.-]+)/).join
receiver = ARGV[1].scan(/to:([\w.-]+)/).join
flags = ARGV[2].scan(/flags:([\w\d\W]+)/).join

puts "#{sender},#{receiver},#{flags}"
