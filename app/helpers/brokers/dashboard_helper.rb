module Brokers::DashboardHelper
    def transact_buy(transaction)
        balance = balance - (transaction * client.quote(stock_name).latest_price)
        assets = assets + transaction
    end

    def transact_sell(transaction)
        balance = balance + (transaction * client.quote(stock_name).latest_price)
        assets = assets - transaction
    end

end
