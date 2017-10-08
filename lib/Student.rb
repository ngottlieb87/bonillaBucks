class Student < ActiveRecord::Base
  has_many :accounts
  has_many :rewards, through: :accounts
  has_many :fines, through: :accounts
  validates(:username, {:presence=> true, :length=>{:maximum=>30}})
end
