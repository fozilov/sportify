Rails.application.routes.draw do

  resources :feeds do
      resources :entries, only: [:index, :show]
  end

  resources :entries, only: [:index]

  root 'feeds#index'

end
