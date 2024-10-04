Rails.application.routes.draw do
devise_for :users, controllers: { registrations: 'users/registrations' }
 root to: "devise/sessions#new"  # or another appropriate page like home#index


  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?


end

