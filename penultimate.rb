=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
# #...
# end
=end

if ARGV[0].nil? then
        puts "Missing arguments. Usage: ruby penultimate.rb <filename>"
        exit(1)
end

File.open(ARGV[0]).each_line do |line|
        puts line
end
