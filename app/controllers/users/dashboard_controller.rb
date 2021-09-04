class Users::DashboardController < ApplicationController
  include StocksHelper

  def amzn
    @symbol = "amzn"         # stock name
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = User.find(current_user.id).wallet.to_f
    @stock = User.find(current_user.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def fb
    @symbol = "fb"           # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = User.find(current_user.id).wallet.to_f
    @stock = User.find(current_user.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def twtr
    @symbol = "twtr"         # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @stock = User.find(current_user.id).stocks.find_by_stock_name(@symbol).asset.to_f
    @wallet = User.find(current_user.id).wallet.to_f
  end

  def nflx
    @symbol = "nflx"         # product
    get_data(@symbol)        # helper  app/helpers/stocks_helper.rb
    @wallet = User.find(current_user.id).wallet.to_f
    @stock = User.find(current_user.id).stocks.find_by_stock_name(@symbol).asset.to_f
  end

  def buy_amzn
    @symbol = "amzn"          # stock name
    @user = User.find(current_user.id)
    @stock_target = @user.stocks.find_by_stock_name(@symbol)
    @wallet_new = @user.update(wallet: @user.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @user.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to users_buy_path
  end

  def buy_fb
    @symbol = "fb"          # stock name
    @user = User.find(current_user.id)
    @stock_target = @user.stocks.find_by_stock_name(@symbol)
    @wallet_new = @user.update(wallet:@user.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @user.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to users_buyfb_path
  end

  def buy_nflx
    @symbol = "nflx"          # stock name
    @user = User.find(current_user.id)
    @stock_target = @user.stocks.find_by_stock_name(@symbol)
    @wallet_new = @user.update(wallet:@user.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @user.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to users_buynflx_path
  end

  def buy_twtr
    @symbol = "twtr"          # stock name
    @user = User.find(current_user.id)
    @stock_target = @user.stocks.find_by_stock_name(@symbol)
    @wallet_new = @user.update(wallet:@user.wallet - 10)
    @last_price = Stock.sandbox.quote(@symbol).latest_price
    @stock_new = @user.stocks.find_by_stock_name(@symbol).update(asset: @stock_target.asset + 10/@last_price.to_f)
    redirect_to users_buytwtr_path
  end

  private
  
  def stock_params
    params.require(:stocks).permit(:assets, :balance, :transaction)
  end

  def get_stock
    @stock =  @user.stocks.find_by_id(@user.id, current_user.id) 
  end

end
