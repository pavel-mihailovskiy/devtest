Rails.application.routes.draw do
  get 'locations/:country_code' => 'locations#index'
  get 'target_groups/:country_code' => 'target_groups#index'
  post 'evaluate_target' => 'evaluations#create'
end
