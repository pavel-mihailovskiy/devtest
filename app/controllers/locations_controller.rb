class LocationsController < ApplicationController
  def index
    render json: country.locations
  end

  private

  def country
    @country ||= Country.find_by(country_code: params[:country_code])
  end
end
