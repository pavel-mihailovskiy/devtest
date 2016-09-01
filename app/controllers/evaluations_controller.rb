class EvaluationsController < ApplicationController
  before_action :authenticate!, only: :create

  def create
    evaluation = Evaluation.new(evaluation_params.to_h)
    if evaluation.valid?
      render json: { price: evaluation.total_price }
    else
      render json: { errors: evaluation.errors }, status: 422
    end
  end

  private

  def evaluation_params
    params.require(:evaluation).permit(
      :country_code,
      :target_group_id,
      locations: [:id, :panel_size]
    )
  end
end
