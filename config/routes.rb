Rails.application.routes.draw do
  
  get 'order_steps' => 'order_steps#create'
  
  resources :order_steps
  
  resources :charges
  
  get 'users/classic'
  
  get 'vcard/show'
  
  get 'admin/new'

  get 'sessions/new'

  get 'orders/start'
  
  get 'orders/update'
  
  post 'orders/show'
  
  get 'orders/index'
  
  get 'sessions/show'
  
  get 'users/edit'

  get 'users/index'

  get 'users/new'

  get 'users/qr'
  
  get 'welcome/index'
  
  #Jewel Add
  get  'login' => 'sessions#new'
  post  'login' => 'sessions#create'
  get  'logout' => 'sessions#destroy'
  resources :users
  resources :user_steps
  
  #Jewel Add
  resources :homes, only: [:show]
  # root to "homes#show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  resources :orders
  resources :vcard
  
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  
  get '/:username' => 'users#showWithUser' , as: 'userAlt'


  
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