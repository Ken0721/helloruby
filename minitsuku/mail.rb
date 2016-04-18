
module Mail
    attr_accessor :contents, :sender, :recipient
    @time
    @contents
    def write(arg)
        @contents = arg.to_s
    end
        
    def send
        @time = Time.now
        print(@time)
        puts ": Sending a Postcard to Friend."
    end
    
    def to_s
        "\t#{self.class} of #{@time}:\n\n\tDear #{self.sender}\n\n\t#{@contents}\n\n Sincerly,\n\t#{self.recipient}"
    end
end

#module Mail
#    attr_reader :sender, :recipient, :text, :date
#       
#    def send
#        puts "#{@date = Time.now}: Sending a #{self.class} to #{self.recipient}."
#    end
#       
#    def write(text)
#        @text = text
#    end
#           
#    def to_s
        "#{self.class} of #{@date}:\n\nDear #{@recipient},\n\n#{@text}\n\nSincerely,\n#{@sender}"
#    end
#end
