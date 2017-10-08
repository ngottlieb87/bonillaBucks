class Fine < ActiveRecord::Base
  has_many :accounts
  has_many :students, through: :accounts
end
