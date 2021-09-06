class Stock < ApplicationRecord
  has_and_belongs_to_many :brokers
  has_and_belongs_to_many :users
  def self.sandbox
    # require 'iex-ruby-client'
    IEX::Api::Client.new(
      publishable_token: ENV['IEX_API_PUBLISHABLE_TOKEN'] ,
      secret_token: ENV['IEX_API_SECRET_TOKEN'],
      endpoint: 'https://cloud.iexapis.com/v1'
    )
  end
  
end