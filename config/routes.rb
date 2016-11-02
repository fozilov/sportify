Rails.application.routes.draw do

  resources :feeds do
      resources :entries, only: [:index, :show]
  end

  root 'feeds#index'

end
