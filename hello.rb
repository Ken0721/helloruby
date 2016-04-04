
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


# for each
for i,j in sales1 do
    puts "#{i}: #{j}"
end

# functional method
def sayHi(name1="ken")
    puts "Hello#{name1}"
end

sayHi("jonson")
#p name1

#class and instance

class User
@@count = 0

   def initialize(name="ken") 
        @name = name ##instance variables
        @@count += 1 ##class variables
   end
    attr_accessor :name
   def sayHi1()
        puts %Q(#{@name})
   end
    
   #instance method
   def User.sayHi2()
        puts "Hello Ruby world."
        puts "#{@@count}"
   end
end

testuser = User.new("Johnson")
testuser.sayHi1()

User.sayHi2()

testuser2 = User.new()
testuser3 = User.new()
User.sayHi2()

p testuser3.name
testuser3.name = "yamad"
p testuser3.name

t = Time.now

p t
p t.year
p t.month
p t.day

t = Time.new(2013, 12, 25, 12, 32, 22)
p t

p t.strftime("updated: %Y-%m/%d-%H:%M")

