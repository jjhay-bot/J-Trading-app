class StocksController < ApplicationController

  def index
    client = Stock.sandbox 

    symbol = "ibm"         # product
    chart_interval = 1     # minutes
    view_range = "1d"       # range
    @stocks_chart = client.chart(symbol.upcase, view_range, chart_interval: chart_interval.to_i)    # chart
    @stock_quote = client.quote(symbol)
    @stock_ohlc = client.ohlc(symbol)

   
  end
end