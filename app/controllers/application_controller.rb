class ApplicationController < ActionController::Base
  private

  def authenticate!
    unless params[:auth_token] && Admin.exists?(auth_token: params[:auth_token])
      render json: { errors: 'Auth token does not provided or invalid' }, status: 401
    end
  end
end
