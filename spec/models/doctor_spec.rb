require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it 'expect Doctor to be invalid without any details' do
    expect(Doctor.new).to_not be_valid
  end

  it 'expect user to be valid with name' do
    expect(Doctor.create(name: 'Jane Doe')).to be_valid
  end

  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
