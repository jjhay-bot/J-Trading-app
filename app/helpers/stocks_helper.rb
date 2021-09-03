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

    def buy(symbol)
        Broker.where("id = #{current_broker.id}").update(
            :wallet=> current_broker.wallet + 10 ,
            :assets=> current_broker.assets - 10*client.quote(symbol).latest_price.to_f
        )        
    end

end