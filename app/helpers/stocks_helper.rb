module StocksHelper
    def client
        Stock.sandbox           # get sandbox to model
    end

    def client_cloud
        Stock.cloud           # get sandbox to model
    end


    def get_data(symbol)
        @logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"

        @name =  client.company(symbol).company_name
        
        @chart = client.chart(symbol).map { |x| [Date.parse(x.label).strftime("%D"), x.close ]}

        @quote = client.quote(symbol)
        @lastest_price = @quote.latest_price
        @chance = @quote.change 
        @chance_percent = @quote.change_percent_s 
    end

end
