class Stock < ApplicationRecord
  
  def self.sandbox
    # require 'iex-ruby-client'
    IEX::Api::Client.new(
      publishable_token: ENV['IEX_API_PUBLISHABLE_TOKEN'] ,
      secret_token: ENV['IEX_API_SECRET_TOKEN'],
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
  end


  # def self.new_lookup(ticker_symbol)
  #   client = sandbox_api
  #   begin
  #     new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
  #   rescue StandardError
  #     nil
  #   end
  # end

  # def self.check_db(ticker_symbol)
  #   find_by(ticker: ticker_symbol&.upcase)
  # end

  # def userstock(current_user)
  #   user_stocks.find_by(user: current_user)
  # end

  # def self.update_price(ticker_symbol)
  #   client = sandbox_api
  #   stock = find_by(ticker: ticker_symbol)
  #   begin
  #     stock.update(last_price: client.price(ticker_symbol))
  #   rescue StandardError
  #     nil
  #   end
  # end
end