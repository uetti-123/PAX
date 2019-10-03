Rails.application.routes.draw do

  get 'admins/admin_enduser', to: 'admins#admin_enduser', as: 'admin_enduser'
  get 'admins/admin_facility', to: 'admins#admin_facility', as: 'admin_facility'
  get 'admins/admins/new_facility', to: 'admins#new_facility', as: 'new_facility'
  get 'admins/top', as: 'top'
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

resources :endusers, only: [:edit, :update, :show]
resources :owners
resources :facilities
resource :admins


root to: 'facilities#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
