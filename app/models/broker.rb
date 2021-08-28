class Broker < ApplicationRecord
  # after_create :send_broker_mail
  # after_create :send_admin_mail
  # after_update :send_broker_approved_mail

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  def active_for_authentication? 
    super && approved? 
  end 
    
  def inactive_message 
    approved? ? super : :not_approved
  end
end
