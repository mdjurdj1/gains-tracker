class User < ActiveRecord::Base
  has_secure_password
  has_many :workouts

  validates_presence_of :username, :password, :email
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }
end
