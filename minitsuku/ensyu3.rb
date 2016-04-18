require ('./mail.rb')
class Postcard
    include Mail
    def initialize(sender, recipient)
        @sender, @recipient = sender, recipient
    end
end
 
card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card
#Tue Mar 22 11:59:16 +0900 2011: Sending a Postcard to Friend.
#    ------------------------------------------------------------
#    Postcard of Tue Mar 22 11:59:16 +0900 2011:
#
#    Dear Friend,
#
#    Did you forget my birthsday?
#
#Sincerely,
#    Me
