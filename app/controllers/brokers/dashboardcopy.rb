class Brokers::DashboardController < ApplicationController
  include StocksHelper

  def amzn
    @symbol = "amzn"         # stock name
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = Broker.find(current_broker.id).wallet.to_f
    @stock = Broker.find(current_broker.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def fb
    @symbol = "fb"           # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = Broker.find(current_broker.id).wallet.to_f
    @stock = Broker.find(current_broker.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def twtr
    @symbol = "twtr"         # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @stock = Broker.find(current_broker.id).stocks.find_by_stock_name(@symbol).asset.to_f
    @wallet = Broker.find(current_broker.id).wallet.to_f
  end

  def nflx
    @symbol = "nflx"         # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = Broker.find(current_broker.id).wallet.to_f
    @stock = Broker.find(current_broker.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def buy_amzn
    @symbol = "amzn"          # stock name
    @broker = Broker.find(current_broker.id)
    @stock_target = @broker.stocks.find_by_stock_name(@symbol)
    @wallet_new = @broker.update(wallet: @broker.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @broker.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to brokers_buy_path
  end

  def buy_fb
    @symbol = "fb"          # stock name
    @broker = Broker.find(current_broker.id)
    @stock_target = @broker.stocks.find_by_stock_name(@symbol)
    @wallet_new = @broker.update(wallet:@broker.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @broker.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to brokers_buyfb_path
  end

  def buy_nflx
    @symbol = "nflx"          # stock name
    @broker = Broker.find(current_broker.id)
    @stock_target = @broker.stocks.find_by_stock_name(@symbol)
    @wallet_new = @broker.update(wallet:@broker.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @broker.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to brokers_buynflx_path
  end

  def buy_twtr
    @symbol = "twtr"          # stock name
    @broker = Broker.find(current_broker.id)
    @stock_target = @broker.stocks.find_by_stock_name(@symbol)
    @wallet_new = @broker.update(wallet:@broker.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @broker.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to brokers_buytwtr_path
  end

  private
  
  def stock_params
    params.require(:stocks).permit(:assets, :balance, :transaction)
  end

  def get_stock
    @stock =  @broker.stocks.find_by_id(@broker.id, current_broker.id) 
  end

end
