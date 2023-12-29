class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :zipcode, numericality: { only_integer: true, message: 'Only numbers allowed' }, presence: true, on: :create

end
