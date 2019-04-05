class Startup

  attr_reader :name, :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    all.find do |startup|
      startup.founder == founder_name
    end
  end

  def self.domains
    all.map do |startup|
      #binding.pry
      startup.domain
    end
  end

  def sign_contract(venture_capitalist, type, amount_invested)
     FundingRound.new(self, venture_capitalist, type, amount_invested)
  end

  def num_funding_rounds
    FundingRound.all.select do |f_round|
      f_round.startup == self
    end.length
  end

  def total_funds
    FundingRound.all.map do |vc|
       vc.startup == self

    end.map do |funds|
      funds.total_worth
      binding.pry
    end
    end


  def investors
    FundingRound.all.select do |vc|
      vc.startup == self
      end.map do |contract|
        contract.venture_capitalist
        end.uniq
      end


end
