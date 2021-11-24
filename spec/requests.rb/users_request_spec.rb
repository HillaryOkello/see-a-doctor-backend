require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'creates a new user with status code 201' do
    post '/users', params:
      { name: 'John Doe',
        password: '123456',
        password_confirmation: '123456' }
    expect(response.content_type).to eq('application/json; charset=utf-8')
    expect(response).to have_http_status(:ok)
  end
end
