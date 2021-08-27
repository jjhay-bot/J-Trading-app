class User < ApplicationRecord
  after_create :send_admin_mail

  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(email).deliver
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items

end
