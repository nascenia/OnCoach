Rails.application.routes.draw do

  resources :training_sessions
  resources :training_plans
  resources :exercise_sessions
  resources :exercise_plans
  resources :exercise_categories
  resources :targeted_muscles
  resources :muscles
  resources :muscle_groups
  resources :exercises
  namespace :admin do
    get 'index' => 'admins#index'
    get 'new' => 'admins#new'
    post 'create' => 'admins#create'
    # resource :admin
  end

  namespace :coach do
    get 'index' => 'coaches#index'
  end

  namespace :user do
    get 'index' => 'users#index'
  end

  devise_for :users, controllers: {
                       sessions: "sessions",
                       :omniauth_callbacks => "users/omniauth_callbacks"
                   }

  namespace :home do
    get '/change_locale/:locale', to: 'home#change_locale', as: :change_locale
  end

  root 'home#index'


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
