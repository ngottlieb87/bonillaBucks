class Account < ActiveRecord::Base
  belongs_to :student
  belongs_to :fine
  belongs_to :reward
end
