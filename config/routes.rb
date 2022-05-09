Rails.application.routes.draw do

  mount ForestLiana::Engine => '/forest', defaults: { format: 'json' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: "registrations",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :expeditions
  resources :guilds do
    resources :guild_comments
  end
  resources :templates do
    resources :template_comments
  end
  resources :leaderboards
  resources :templates
  get '/audiences/:id', :to => 'templates#audiences', :as => "audiences"
  get '/dashboards1', :to => 'dashboards#dashboards1', :as => "dashboards1"
  get '/dashboards2', :to => 'dashboards#dashboards2', :as => "dashboards2"
  get '/dashboards3', :to => 'dashboards#dashboards3', :as => "dashboards3"
  get '/dashboards4', :to => 'dashboards#dashboards4', :as => "dashboards4"
  get '/nft/:id', :to => 'templates#nft', :as => "nft"
  resources :dashboards
  resources :projects
  resources :onboardings
  post 'refresh', to: "guilds#refresh"
  post 'onboarded', to: "dashboards#onboarded"
end
