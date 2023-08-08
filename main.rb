# Cryto Converter
require_relative 'crypto/manager'

def menu
  manager = Manager.new

  loop do
    [
      'Cryptocurrency Converter'.center(50, '#'),
      'a) Convert to USD',
      'b) Convert to EUR',
      'q) Quit'
    ].each { puts _1 }
    print('Action: ')
    choice = gets.chomp

    case choice
    when 'a'
      puts 'Avialable Coins'
      puts manager.coin_list.join(', ').center(50, '-')
      print 'Coin:'
      symbol = gets.chomp.upcase
      print('Amount: ')
      amount = gets.chomp.to_i

      if manager.coin_list.include? symbol
        result = manager.calculate(amount, symbol, 'USD')
        print '-'.center(50, '-')
        p "#{amount} #{symbol} = #{result} USD".center(50, '-')
      else
        puts "#{symbol} is not available.".center(50, '-')
      end
    end

    break unless choice != 'q'
  end
end

menu
