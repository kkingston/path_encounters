class User < ActiveRecord::Base
  # creates a method called encounters which allows us to see all encounters that belong to this USER
  has_many :encounters

  has_secure_password

  validates :user_name, presence: true, uniqueness: true 
end
