class User < ApplicationRecord
  has_secure_password  #password validations
  has_many :pets
  has_many :vets, through: :pets

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
