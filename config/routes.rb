Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pets do
    resources :appointments, only: [:new, :create]
  end
  resources :pets do
    resources :clinical_histories, except: [:show, :destroy]
  end
  resources :pets do
    resources :vaccinations, except: [:show, :destroy]
  end
  resources :pets do
    resources :veterinaries, only: [:show, :index]
  end

  resources :appointments, except: [:new, :create, :show]
  get 'my_appointments', to: 'appointments#my_appointments', as: 'my_appointments'
  get 'my_patients', to: 'appointments#my_patients', as: 'my_patients'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
