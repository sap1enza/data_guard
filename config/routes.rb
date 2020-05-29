Rails.application.routes.draw do
  root to: 'home#index'

  resources :employee_groups, only: %i[create]
end
