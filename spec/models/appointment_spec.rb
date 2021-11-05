require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it 'expect Appointment to be invalid without any details' do
    expect(Appointment.new).to_not be_valid
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor) }
  end

  describe 'validations' do
    it { should validate_presence_of(:appointment_date) }
  end
end
