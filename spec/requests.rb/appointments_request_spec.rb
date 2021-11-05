require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  it 'renders list of appointments for logged in user' do
    post '/login', params:
      {
        session: {
          name: 'kelly',
          password: '123456'
        }
      }
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    get "/users/#{JSON.parse(response.body)['user']}/appointments", headers: headers
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json; charset=utf-8')
  end
end
