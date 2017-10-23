class Student < ActiveRecord::Base
  has_many :accounts
  has_many :rewards, through: :accounts
  has_many :fines, through: :accounts
  validates(:username, {:presence=> true, :length=>{:maximum=>30}})
  before_save(:hash_pass)
  include BCrypt

  def auth_pass(password, hash)
    BCrypt::Password.new(hash) == password
  end

  private

  def hash_pass()
    self.user_password=(BCrypt::Password.create(user_password).to_s)
  end
end
