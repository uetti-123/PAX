Rails.application.routes.draw do

  get 'admins/admin_facility', to: 'admins#admin_facility', as: 'admin_facility'
  get 'admins/top', as: 'top'
  get 'owners/owner_home', as: 'owner_home'
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
resources :owners
resources :facilities
resource :admins


root to: 'facilities#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
