class User < ApplicationRecord
  has_and_belongs_to_many :stocks

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
