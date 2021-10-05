class HomeController < ApplicationController
  include StocksHelper

  def index
    @symbol = "amzn"         # stock name
    @news_amzn = client_cloud.news(@symbol).last
    @symbol = "fb"         # stock name
    @news_fb = client_cloud.news(@symbol).last

    @symbol = "twtr"         # stock name
    @news_twtr = client_cloud.news(@symbol).last

    @symbol = "nflx"         # stock name
    @news_nflx = client_cloud.news(@symbol).last
  end
end


