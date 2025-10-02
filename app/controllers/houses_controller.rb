class HousesController < ApplicationController
  before_action :authorize_request, only: [:create]

  def index
    houses = House.all

    render json: houses
  end

  def create
    house = House.new(
      location: params[:location],
      size: params[:size],
      rooms: params[:rooms],
      is_active: true
    )

    if house.save
      render json: house, status: :created
    else
      render json: house.errors, status: :unprocessable_entity
    end
  end
end
