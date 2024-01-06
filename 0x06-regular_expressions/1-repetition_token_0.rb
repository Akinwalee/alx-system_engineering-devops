#!/usr/bin/env ruby
# matches hbt(between 2 and 5)n

puts ARGV[0].scan(/hbt{2,5}n/).join
