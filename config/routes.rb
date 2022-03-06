Rails.application.routes.draw do

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: "registrations",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end


  resources :guilds do
    resources :guild_comments
  end
  resources :templates
  resources :dashboards
  post 'refresh', to: "guilds#refresh"
end
