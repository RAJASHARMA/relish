require 'rails_helper'

RSpec.describe 'Articles API', type: :request do
  it 'returns all articles' do
    user = FactoryBot.create(:user, name: "Raja Sharma")
    FactoryBot.create(:article, name: 'Some A', body: "Some more....", user: user)
    FactoryBot.create(:article, name: 'Some A', body: "Some more....", user: user)

    get '/api/articles'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end