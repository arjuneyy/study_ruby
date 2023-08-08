require 'uri'
require 'net/http'
require 'json'
require_relative 'coin'

class Manager
  @@repo = {}  # Double `@@` is a class variable.
  def initialize
    initialize_repo
  end

  def initialize_repo
    response = JSON.parse(web_scrape)
    response.each do |key, val|
      coin = Coin.new(key, val['USD'], val['EUR'])
      @@repo[key] = coin
    end
  end

  def coin_list
    p @@repo
    @@repo.keys
  end

  def calculate(amount, symbol, to)
    coin = @@repo[symbol]
    amount * coin.send(to.to_sym)
  end

  def web_scrape
    url = 'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH&tsyms=USD,EUR'
    uri = URI(url)
    Net::HTTP.get(uri)
  end
end
