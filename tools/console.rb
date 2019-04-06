require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

facebook = Startup.new("facebook", "ali", "www.facebook.com")
reddit = Startup.new("reddit", "alexi", "www.reddit.com")



cap1 = VentureCapitalist.new("Capital1", 1000000000)
cap2 = VentureCapitalist.new("Capital2", 2000000000)
cap3 = VentureCapitalist.new("Capital3", 3000000000)
cap4 = VentureCapitalist.new("Capital4", 4000000000)
#cap1.offer_contract(facebook,"fbk1",100)


# bob = Venture.new("")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
fbk1 = FundingRound.new(facebook,cap1,"Capital1",100)
fbk11 = FundingRound.new(facebook,cap1,"Capital1",400)

fbk2 = FundingRound.new(facebook,cap2,"Capital2",200)

red1 = FundingRound.new(reddit,cap3,"Capital3",300)
red2 = FundingRound.new(reddit,cap4,"Capital4",400)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
