class Stock < ApplicationRecord
  has_and_belongs_to_many :brokers
  has_and_belongs_to_many :users
  def self.sandbox
    # require 'iex-ruby-client'
    IEX::Api::Client.new(
      # publishable_token: "pk_945a6baf5076490e8e884fe0be31a140" ,
      # endpoint: 'https://cloud.iexapis.com/v1'

      publishable_token: "Tpk_35ee6b219428402a8b6d8444d48fcf7f" ,
      endpoint: 'https://sandbox.iexapis.com/v1'

      
    )
  end

  def self.cloud
    IEX::Api::Client.new(
      publishable_token: "pk_945a6baf5076490e8e884fe0be31a140" ,
      endpoint: 'https://cloud.iexapis.com/v1'      
    )
  end
  
end

# pk_6846c91abbed402885787624d1e88164