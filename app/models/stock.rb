class Stock < ApplicationRecord
  has_and_belongs_to_many :brokers
  has_and_belongs_to_many :users
  def self.sandbox
    # require 'iex-ruby-client'
    IEX::Api::Client.new(
      publishable_token: "pk_945a6baf5076490e8e884fe0be31a140" ,
      endpoint: 'https://cloud.iexapis.com/v1'
    )
  end
  
end