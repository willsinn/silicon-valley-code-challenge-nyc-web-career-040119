class VentureCapitalist

  attr_reader :name
  attr_accessor :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    all.select do |venture_capitalist|
      venture_capitalist.total_worth > 1000000000
    # end.map do |investor|
    #       investor.name
    end
  end

  def offer_contract(startup, type, amount_invested)
    oc = FundingRound.new(self, startup, type, amount_invested)
    oc
  end

  def funding_rounds
    FundingRound.all.select {|f_round| f_round.venture_capitalist == self }
  end

  def portfolio
    FundingRound.all.select {|f_round| f_round.startup }.uniq
  end

  def biggest_investment
        if funding_rounds.length > 1
          a = funding_rounds[0].investment
          b = funding_rounds[1].investment
          max = a > b ? a : b
        else
          funding_rounds
        end
      end

  def invested
    if portfolio.length > 1
      a = portfolio[0].investment
      b = portfolio[1].investment
      sum = a+b
    else
      portfolio
    end
  end
end
