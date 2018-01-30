Rails.application.routes.draw do

  root "homes#index"

  namespace :api, defaults: { format: "json" } do
    resources :tasks, only: [:index]
  end

end
