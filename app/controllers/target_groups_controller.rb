class TargetGroupsController < ApplicationController
  def index
    render json: country.target_groups
  end

  private

  def country
    @country ||= Country.find_by(country_code: params[:country_code])
  end
end
