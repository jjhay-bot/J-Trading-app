class Brokers::DashboardController < ApplicationController
  include StocksHelper
  # before_action :get_broker
  # before_action :get_stock

  def amzn
    symbol = "amzn"         # product
    get_data(symbol)
  end

  def fb
    symbol = "fb"           # product
    get_data(symbol)
  end

  def twtr
    symbol = "twtr"         # product
    get_data(symbol)
  end

  def nflx
    symbol = "nflx"         # product
    get_data(symbol)
  end


  private
  
  def stock_params
    params.require(:stocks).permit(:assets, :balance, :transaction)
  end

  def get_broker
    @broker = Broker.find_by_id("id: #{current_broker.id}").last
  end

  def get_stock
    @stock =  @broker.stocks.find_by_id(@broker.id, current_broker.id) 
  end

end
