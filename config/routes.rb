Rails.application.routes.draw do

  mount ForestLiana::Engine => '/forest'
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
  resources :templates do
    resources :template_comments
  end
  resources :leaderboards
  resources :templates
  get '/audiences/:id', :to => 'templates#audiences', :as => "audiences"
  get '/tokens/:id', :to => 'templates#tokens', :as => "tokens"
  get '/nft/:id', :to => 'templates#nft', :as => "nft"
  resources :dashboards
  resources :projects
  resources :onboardings
  post 'refresh', to: "guilds#refresh"
  post 'onboarded', to: "dashboards#onboarded"
end
