Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :compositions, except: [:destroy] do 
      resources :sections, except: [:destroy]
    end
  end
end
