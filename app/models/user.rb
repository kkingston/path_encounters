class User < ActiveRecord::Base
  has_many :encounters

  has_secure_password

  validates :user_name, presence: true, uniqueness: true 
end
