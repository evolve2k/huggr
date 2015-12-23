class Api::SubscriptionsController < ApplicationController
  def create
    render json: {
      data: {
        id: data[:id]
      }
    }, status: 201
  end

  private
    def data
      return { id: "f019e02a-c6f2-4b27-9f2d-e9a342941f83" } unless params[:data]
      params[:data]
    end
end
