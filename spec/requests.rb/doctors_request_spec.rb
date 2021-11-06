require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  it 'renders doctors' do
    get doctors_path
    expect(response).to have_http_status(200)
  end

  it 'renders list of doctors only for logged in user' do
    post '/login', params:
      {
        session: {
          name: 'Kelly',
          password: '123456'
        }
      }
    headers = { Authorization: JSON.parse(response.body)['jwt'] }
    get '/doctors', headers: headers
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json; charset=utf-8')
  end
end
