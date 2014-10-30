Rails.application.routes.draw do
  root "patients#index"
  resources :patients
  resources :households
  resources :syndromes
  resources :cases
  resources :locations
  
  post 'twilio/send_text_message' => 'twilio#send_text_message'
  
end
