class HomeController < ApplicationController
  include StocksHelper

  def index
    @symbol = "amzn"         # stock name
    @news_amzn = client.news(@symbol).last

    @symbol = "fb"         # stock name
    @news_fb = client.news(@symbol).last

    @symbol = "twtr"         # stock name
    @news_twtr = client.news(@symbol).last

    @symbol = "nflx"         # stock name
    @news_nflx = client.news(@symbol).last
  end
end
