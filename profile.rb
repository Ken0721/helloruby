profiles = [
    { :name => "Taro", :age => 34, :address => "Shizuoka"},
    { :name => "Jiro", :age => 24, :address => "Osaka"},
    { :name => "Saburo", :age => 14, :address => "Tokyo"}
]

def search(profiles, keywords)
    profiles.each do |prfl|
        ##check keys
        prfl.keys.each do |key|
            if keywords == key
                return prfl[keywords]
            end
        end
        ##check values
        return prfl.values
    end
end

p search(profiles, "name")
