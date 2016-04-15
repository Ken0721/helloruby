def clever_print(*args)
      converted = []
      args.each do |arg|
          if arg.is_a?(Hash)
            converted << arg.to_a
          else
            converted << arg
          end
      end
      puts converted.join(" ")

end


#def clever_print(*args)
#    array = []
#    args.each do |arg| 
#        array << arg.to_a
#    end
#    puts array.join(" ")
#end

#    array = []
#    i=0
#    while i != args.size do
#        if args[i].is_a?(Hash)
#            ikey = args[i].keys
#            puts ikey
#            puts args[i]
#            array.push(args[i].keys)
#            puts args[i]["Rails"]
#            array.push(args[i][ikey])
#        else
#            array.push(args[i])
#        end
#        i+=1
#    end
#    puts array.join(" ")
#end




clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
# 
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
# #=> Agile Web Development with Rails 3.0
#


