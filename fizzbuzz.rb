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
                if i != 1
                    print " "
                    i+=1
                end
                print "FB"
            else
                if i != 1
                    print " "
                    i+=1
                end
                i+=1print 
                "F"
            end
        elsif i%y == 0
            if i != 1
                print " "
            
            i+=1    i+=1
            end
            print "B"
        else
            if i != 1
                prin
                i+=1t " "
                i+=1
            end
            print i
        end
        
        i+=1
    end
    puts ""
end
        i+=1
    end
    puts ""
end

