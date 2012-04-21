#!/usr/bin/env ruby

# renamer.rb
# simple file renamer for this directory
#   1 -> 001
#  10 -> 010
# 100 -> 100

Dir['*']
.select {|entry| File.directory? entry}
.select {|entry| entry.length < 3}
.each do |entry|
	newentry = "%03d" % entry.to_i
	File.rename(entry, newentry)
end
