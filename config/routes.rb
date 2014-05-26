ResourcingApp::Application.routes.draw do
  resources :holidays

  resources :client_fees

  resources :planned_hours
  resources :users
  resources :clients

  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/utilisation',   to: 'static_pages#utilisation',   via: 'get'
  match '/utilisation/travel',   to: 'static_pages#utilisation_travel',   via: 'get'
  match '/utilisation/retail',   to: 'static_pages#utilisation_retail',   via: 'get'
  match '/utilisation/tech',   to: 'static_pages#utilisation_tech',   via: 'get'
  match '/utilisation/cultivate',   to: 'static_pages#utilisation_cultivate',   via: 'get'
  match '/utilisation/ppc',   to: 'static_pages#utilisation_ppc',   via: 'get'
  match '/recovery',   to: 'static_pages#recovery',   via: 'get'
  match '/pacing',   to: 'static_pages#pacing',   via: 'get'
  match '/decrement_month_view', to: 'static_pages#decrement_month_view', via: 'get'
  match '/increment_month_view', to: 'static_pages#increment_month_view', via: 'get'

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/utilisation"
  get "static_pages/recovery"
  get "static_pages/pacing"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
