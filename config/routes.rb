Rails.application.routes.draw do
  resources :products

  # Api definition
  namespace :api, defaults: { format: :json }  do
    namespace :v1 do
      resources :products
    end
  end
end
