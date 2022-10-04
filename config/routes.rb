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
  get '/community', :to => 'pages#community', :as => "community"
  get '/gamefi', :to => 'pages#gamefi', :as => "gamefi"
  get '/defi', :to => 'pages#defi', :as => "defi"
  get '/vision', :to => 'pages#vision', :as => "vision"
  get '/test', :to => 'pages#test', :as => "test"
  get '/audiences', :to => 'use_cases#audiences', :as => "audiences"
  get '/profile', :to => 'leaderboards#profile', :as => "profile"
  get '/onboarding1', :to => 'onboardings#onboarding1', :as => "onboarding1"
  get '/onboarding2', :to => 'onboardings#onboarding2', :as => "onboarding2"
  get '/onboarding3', :to => 'onboardings#onboarding3', :as => "onboarding3"
  get '/onboarding4', :to => 'onboardings#onboarding4', :as => "onboarding4"
  get '/dashboards1', :to => 'dashboards#dashboards1', :as => "dashboards1"
  get '/dashboards2', :to => 'dashboards#dashboards2', :as => "dashboards2"
  get '/dashboards3', :to => 'dashboards#dashboards3', :as => "dashboards3"
  get '/dashboards4', :to => 'dashboards#dashboards4', :as => "dashboards4"
  get '/dashboards5', :to => 'dashboards#dashboards5', :as => "dashboards5"
  get '/templates1', :to => 'templates#templates1', :as => "templates1"
  get '/user_list', :to => 'pages#user_list', :as => "user_list"
  get '/templates2', :to => 'templates#templates2', :as => "templates2"
  get '/templates3', :to => 'templates#templates3', :as => "templates3"
  get '/nft/:id', :to => 'templates#nft', :as => "nft"
  resources :dashboards
  resources :schedules
  resources :use_cases
  resources :events
  resources :projects do
    resources :dashboards
  end
  resources :onboardings
  post 'validate_section1', to: "expeditions#validate_section1"
  post 'validate_section2', to: "expeditions#validate_section2"
  post 'validate_section3', to: "expeditions#validate_section3"
  post 'join', to: "expeditions#join"
  post 'refresh', to: "dashboards#refresh"
  post 'onboarded', to: "onboardings#onboarded"
  post 'founder', to: "onboardings#founder"
  post 'web2', to: "onboardings#web2"
  post 'vc', to: "onboardings#vc"
  post 'add_project', to: "onboardings#add_project"
end
