class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
end
