Rails.application.routes.draw do
<<<<<<< HEAD
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

=======
>>>>>>> 2b677ee8f946ad217ccde43b6c42d06bb746cf3d
  resources :feeds
  root 'feeds#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
