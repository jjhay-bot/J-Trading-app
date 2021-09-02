module StocksHelper
    def client
        Stock.sandbox           # get sandbox to model
    end

    def get_data(symbol)
        @logo = "https://storage.googleapis.com/iex/api/logos/#{symbol.upcase}.png"
        @name =  client.company(symbol).company_name
        @chart = client.chart(symbol).map { |x| [Date.parse(x.label).strftime("%D"), x.close ]}
        @lastest_price = client.quote(symbol).latest_price
        @chance = client.quote(symbol).change 
        @chance_percent = client.quote(symbol).change_percent_s 
    end

end