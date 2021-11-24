require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
  User.create(name: 'kelly', password: '123456', password_confirmation: '123456')
  it 'logs in a new user' do
    post '/login', params:
      {
        session: {
          name: 'kelly',
          password: '123456'
        }
      }
    expect(response.body).to include('token')
    expect(response.content_type).to eq('application/json; charset=utf-8')
    expect(response).to have_http_status(:ok)
  end

  it 'unauthorized for non existing user' do
    post '/login', params:
      {
        session: {
          name: 'kelly',
          password: '1234567'
        }
      }
    expect(response).to have_http_status(:unauthorized)
  end
end
