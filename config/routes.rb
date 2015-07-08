Rails.application.routes.draw do

  mount FullcalendarEngine::Engine => "/fullcalendar_engine"

  resources :training_sessions
  resources :training_plan_templates do
    put 'edit'
  end
  resources :exercise_sessions
  resources :training_session_templates
  resources :exercise_categories
  resources :targeted_muscles
  resources :muscles
  resources :muscle_groups
  resources :exercises

  resources :exercise_sessions do
    get 'get_events' => 'exercise_sessions/get_events'
  end

  resources :home do
    get '/change_locale/:locale', to: 'home#change_locale', as: :change_locale
    get 'begin', to: 'home#begin', on: :collection
    get 'contact', to: 'home#contact', on: :collection
  end
  namespace :admin do
    get 'index' => 'admins#index'
    get 'new' => 'admins#new'
    post 'create' => 'admins#create'
    # resource :admin
  end

  namespace :coach do
    get 'index' => 'coaches#index'
    get 'calendar' => 'coaches#calendar'
  end

  namespace :user do
    get 'index' => 'users#index'
    get 'calendar' => 'users#calendar'
  end

  devise_for :users, controllers: {
                       sessions: "sessions",
                       :omniauth_callbacks => "users/omniauth_callbacks"
                   }

  root 'home#begin'
end
