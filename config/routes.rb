Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :guilds
  resources :templates
  resources :dashboards
  post 'refresh', to: "guilds#refresh"
end
