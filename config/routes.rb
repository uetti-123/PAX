Rails.application.routes.draw do

  root to: 'facilities#home'

  get 'admins/admin_facility', to: 'admins#admin_facility', as: 'admin_facility'
  get 'admins/top', as: 'top'
  get 'owners/owner_home', as: 'owner_home'
  post   '/favorite/:facility_id' => 'favorites#favorite',   as: 'favorite'
  delete '/favorite/:facility_id' => 'favorites#unfavorite', as: 'unfavorite'
  get 'reserved', to:'reservations#reserved', as: 'reserved'
  get 'features/:feature_id/segment', to: 'features#segment', as: 'segment'
  post 'room/:id/reservations', to: 'reservations#new', as: "new_reservation"
  get 'admins/index', to: 'admins#index', as: "admins_index"
  get 'owners/:owners_id/facilities/new', to: 'facilities#new', as: "new_facility"
  post 'owners/:owners_id/facilities' => 'facilities#create', as: "create_facilities"

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :endusers, controllers: {
  sessions:      'endusers/sessions',
  passwords:     'endusers/passwords',
  registrations: 'endusers/registrations'
}
  devise_for :owners, controllers: {
  sessions:      'owners/sessions',
  passwords:     'owners/passwords',
  registrations: 'owners/registrations'
}

resources :endusers, only: [:edit, :update, :show, :index, :destroy]
resources :owners, only: [:index]
resources :facilities, only: [:edit, :update, :show, :index, :destroy]
resource :admins
resources :features, only: [:edit, :index, :show, :destroy, :new]
resources :reservations


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
