=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
# #...
# end
=end

#check if there is a argument.
if ARGV[0].nil? then
        puts "Missing arguments. Usage: ruby penultimate.rb <filename>"
        exit(1)
end

#check if there is the file of the argument.
require "find"
flag = 0
Find.find("./"){|f|
  tmp = File.basename(f)
   #check match to hsdpSettingCDS***rpm
  if ARGV[0] == tmp then
    flag = 1
    break
  else
    flag = 0
    next
  end
}

if flag == 0
  puts "There is no such file,  " + ARGV[0] + "."
  exit (1)
end

File.open(ARGV[0]).each_line do |line|
  words=0
  w_num=0
  line.chomp!
  words = line.split(/\s+/).reject{|w| w.empty?}
  w_num = words.size
  if w_num == 0
    next
  elsif w_num == 1
    next
  else
    puts words[w_num-2]
  end
end
