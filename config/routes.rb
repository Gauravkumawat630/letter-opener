Rails.application.routes.draw do
devise_for :users, controllers: { registrations: 'users/registrations' }
 root to: "devise/sessions#new"  # or another appropriate page like home#index
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"




  
end
end