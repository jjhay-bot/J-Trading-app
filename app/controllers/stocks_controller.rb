class StocksController < ApplicationController
  # include StocksHelper
  
  # def index

  #   symbol = "amzn"         # product
  #   @amzn_name =  client.company(symbol).company_name
  #   @amzn_logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"

  #   @amzn_chart = client.chart(symbol).map { |x| [Date.parse(x.label).strftime("%D"), x.close ]}
    
  #   # client.chart(symbol).collect { |x| x.close}
 
  #   @amzn_lastest = client.quote(symbol).latest_price
  #   @amzn_chance = client.quote(symbol).change 
  #   @amzn_percent = client.quote(symbol).change_percent_s 
  # end

  # def fb
  #   @fb_name =  client.company(symbol).company_name
  #   @fb_logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"
  #   @fb_price = client.chart(symbol).map do |chart| chart.close end
  #   @fb_label = client.chart(symbol).map do |chart| chart.label end
  #   @fb_lastest = client.quote(symbol).latest_price
  #   @fb_chance = client.quote(symbol).change 
  #   @fb_percent = client.quote(symbol).change_percent_s 
    
  #   symbol = "twtr"         # product
  #   @twtr_name =  client.company(symbol).company_name
  #   @twtr_logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"
  #   @twtr_price = client.chart(symbol).map do |chart| chart.close end
  #   @twtr_label = client.chart(symbol).map do |chart| chart.label end
  #   @twtr_lastest = client.quote(symbol).latest_price
  #   @twtr_chance = client.quote(symbol).change 
  #   @twtr_percent = client.quote(symbol).change_percent_s 

  #   symbol = "nflx"         # product
  #   @nflx_name =  client.company(symbol).company_name
  #   @nflx_logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"
  #   @nflx_price = client.chart(symbol).map do |chart| chart.close end
  #   @nflx_label = client.chart(symbol).map do |chart| chart.label end
  #   @nflx_lastest = client.quote(symbol).latest_price
  #   @nflx_chance = client.quote(symbol).change 
  #   @nflx_percent = client.quote(symbol).change_percent_s 
    
  # end

end




# USER > CONTROLLER > MODEL > CO > VIEW


# SERVICES OBJECT