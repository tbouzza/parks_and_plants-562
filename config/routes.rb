Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  # /plants/:id -> DO I NEED TO KNOW THE GARDEN? NO!
  resources :plants, only: :destroy
end
