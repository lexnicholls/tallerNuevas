Rails.application.routes.draw do
  resources :appointments
  resources :offices
  resources :office_types
  resources :patients
  resources :doctors
  resources :specialties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
