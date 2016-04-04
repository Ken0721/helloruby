
a = 10
b = "5"

p a.to_s+b

h = {nishimoto: 100, kennosuke: 200}
p h.to_a.to_h

p "hello.world".length
p "hello.world".reverse

sales = [5,8,4]
p sales[1]

p sales[0..2] #under
p sales[0...2] #below 

p sales[-1]
p sales[1,2]

sales[0...2] = [1,2]
p sales
sales[1, 0]= [10,11,12]
p sales.size
p sales.sort.reverse
p sales.push(100)

p sales << 100 << 102

sales1 = {"knishimoto"=>100, "ken"=>200}
p sales1["ken"]


sales1 = {:knishimoto =>100, :ken =>200}
p sales1[:knishimoto]
sales1 = {knishimoto: 300, ken: 400}
p sales1[:knishimoto]
p "This is ruby test"
p sales1.size
p sales1.keys
p sales1.values
p sales1.has_key?(:ken)


#% is sometimes better than just using "" cuz u don't need
#to use \ to escape ".
#"" = %Q '' = %qa
@name = "ken"
s = "hel\"#{@name}lo"
p s
s = %Q(hel"l#{@name}o)
p s
s = %q(hel"l#{@name}o)
p s

a = %W(#{@name} b c)
p a

if !sales1.has_key?(:ken)
    p sales1.values
else
    p "ken doesn exist"
end


p sales1.values if sales1.has_key?(:ken)

##case : conditional

case "#{@name}"
when "tama"

when "shingo"

when "ken"
    p"correct this is ken"
else
    p "didnt match"
end



