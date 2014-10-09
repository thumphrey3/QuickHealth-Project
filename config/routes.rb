Rails.application.routes.draw do
  root "patients#index"
  resources :patients
  resources :households
  resources :syndromes
  resources :cases
  
  post 'twilio/send_text_message' => 'twilio#send_text_message'
  
end
