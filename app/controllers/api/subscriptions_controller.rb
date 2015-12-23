class Api::SubscriptionsController < ApplicationController
  def create
    data = params[:data]
    render json: {
      data: {
        id: "f019e02a-c6f2-4b27-9f2d-e9a342941f83"
      }
    }, status: 201
  end
end
