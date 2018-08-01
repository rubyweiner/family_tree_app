Rails.application.routes.draw do

  resources :families do
    resources :photos
    resources :people, shallow: true do
      resources :ethnicities, only: [:new, :create, :edit, :update, :destroy]
      resources :relationships, only: [:new, :create, :edit, :update, :destroy]
      resources :partnerships, only: [:new, :create, :edit, :update, :destroy]
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
