class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :city, presence: true

  geocoded_by :address
  after_validation :geocode 

  def address
    "#{city},#{state}"
  end



end
