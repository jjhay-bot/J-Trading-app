class Broker < ApplicationRecord
  has_and_belongs_to_many :stocks
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def active_for_authentication? 
    super && approved? 
  end 
    
  def inactive_message 
    approved? ? super : :not_approved
  end

  def amzn?
      self.stock_name == 'amzn'
  end

  def fb?
      self.stock_name == 'fb'
  end

  def twtr?
      self.stock_name == 'twtr'
  end

  def nflx?
      self.stock_name == 'nflx'
  end


end
