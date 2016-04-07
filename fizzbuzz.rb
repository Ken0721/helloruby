
File.open(ARGV[0]).each_line do |l|
    l.chomp!
    words = l.split(" ").reject{|w| w.empty?}
    x = words[0].to_i
    y = words[1].to_i
    n = words[2].to_i
    i = 1
    while i < n+1 do
        if i%x == 0
            if i%y == 0
               print " B"
            else
                print " F"
            end
        else
            if i != 1
                print " "
            end
            print i
        end
        i+=1
    end
    puts ""
end

