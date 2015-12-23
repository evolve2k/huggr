require 'rails_helper'

RSpec.describe Api::SubscriptionsController, :type => :controller do
  describe 'POST #create' do
    specify 'that the correct response is returned' do
      post :create, format: :json
      expect(response.code).to eq('201')
    end

    specify 'that the created subscription is returned as JSON API' do
      post :create, format: :json
      expect(response.body).to eq(
        JSON(
          data: {
            id: "f019e02a-c6f2-4b27-9f2d-e9a342941f83"
          }
        )
      )
    end

    specify 'that the created subscription is returned as JSON API' do
      post :create, { data: { id: "73787527-9521-49b9-a607-5ec20156b636" }}, format: :json
      expect(response.body).to eq(
        JSON(
          data: {
            id: "73787527-9521-49b9-a607-5ec20156b636"
          }
        )
      )
    end
  end
end
