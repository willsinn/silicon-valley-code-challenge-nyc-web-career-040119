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
  end
