class Api::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.create(data)
    render json: {
      data: {
        id: subscription.id
      }
    }, status: 201
  end

  private
    def data
      params.require(:data).permit!
    end
end
