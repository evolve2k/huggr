require 'rails_helper'

RSpec.describe Api::SubscriptionsController, :type => :controller do
  describe 'POST #create' do
    subject do
      post :create, { data: { id: "73787527-9521-49b9-a607-5ec20156b636" }}, format: :json
    end

    specify 'that the correct response is returned' do
      expect(subject.code).to eq('201')
    end

    specify 'that the created subscription is returned as JSON API' do
      expect(subject.body).to eq(
        JSON(
          data: {
            id: "73787527-9521-49b9-a607-5ec20156b636"
          }
        )
      )
    end

    #specify 'that a Subscription object is created in the database' do

    #end
  end
end
