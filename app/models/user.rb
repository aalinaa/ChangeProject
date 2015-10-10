class User < ActiveRecord::Base
  has_many :requests
  belongs_to :country
  has_many :products, dependent: :destroy
  has_many :feetbacks, dependent: :destroy
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  
end
