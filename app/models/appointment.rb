class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :appointment_date, presence: true
end
