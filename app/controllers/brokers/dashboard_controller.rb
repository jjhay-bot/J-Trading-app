class Brokers::DashboardController < ApplicationController
  include StocksHelper
  before_action :get_broker, only: %i[ buy sell ] 
  before_action :get_stock, only: %i[ buy sell ] 

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

  def buy
    if stock_name.amzn?
      @stock.update(
        transact_buy(transaction) 
      )
    elsif stock_name.fb?
      @stock.update(
        transact_buy(transaction) 
      )
    elsif stock_name.twtr?
      @stock.update(
        transact_buy(transaction) 
      )
    elsif stock_name.twtr?
      @stock.update(
        transact_buy(transaction) 
      )
    end
  end

  

  private
  
  def stock_params
    params.require(:articles).permit(:assets, :balance, :transaction)
  end

  def get_broker
    @broker = Broker.find(params[:id])
  end

  def get_stock
    @stock = @broker.stocks.find(params[:broker_id])
  end

end
