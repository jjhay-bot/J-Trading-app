class StocksController < ApplicationController 
  include StocksHelper

  def index
    @symbol = "amzn"         # stock name
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = Broker.find(current_broker.id).wallet.to_f
    @stock = Broker.find(current_broker.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end


  private
  
  def stock_params
    params.require(:stocks).permit(:assets, :balance, :transaction)
  end

  def get_stock
    @stock =  @broker.stocks.find_by_id(@broker.id, current_broker.id) 
  end

end




# USER > CONTROLLER > MODEL > CO > VIEW


# SERVICES OBJECT