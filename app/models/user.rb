class User < ActiveRecord::Base
  has_secure_password
  has_many :workouts

  validates_presence_of :username, :password, :email
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
