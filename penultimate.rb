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
  elsif tmp=~/^cdsPak.*rpm\z/ then
    flag = 0
    next
  end
}

if flag == 0
  puts "There is no such file,  " + ARGV[0] + "."
  exit (1)
end

words=0
w_num=0
File.open(ARGV[0]).each_line do |line|
  line.chomp!
  words = line.split(/\s+/).reject{|w| w.empty?}
  w_num += words.size
  if w_num == 1
    puts "#{words}"
    puts "#{w_num}"
  elsif
    puts "#{words}"
    puts "#{w_num}"
  end
end
