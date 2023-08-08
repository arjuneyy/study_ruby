class Coin
  attr_accessor :symbol, :EUR, :USD

  def initialize(symbol, usd, eur)
    @symbol, @USD, @EUR = symbol, usd, eur
  end
end
