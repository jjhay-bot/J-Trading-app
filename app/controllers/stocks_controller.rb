class StocksController < ApplicationController 
  def index
    # require 'iex-ruby-client'
    client = IEX::Api::Client.new(
      publishable_token: 'pk_1e6046c067f94660afa2f03aa72d47f1',
      endpoint: 'https://cloud.iexapis.com/v1'
    )
    @stock = client.quote('msft').latest_price
  end
end




# USER > CONTROLLER > MODEL > CO > VIEW


# SERVICES OBJECT