class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :validatable, :trackable

  has_many :jobs
end
