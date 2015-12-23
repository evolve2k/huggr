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
      params[:data]
    end
end
