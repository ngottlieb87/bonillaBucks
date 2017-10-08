class Student < ActiveRecord::Base
  has_many :accounts
  has_many :rewards, through: :accounts
  has_many :fines, through: :accounts
end
