CrmBranchcore::Application.routes.draw do


#get "access/sing_up"

#get "access/logout"

#get "access/sign_in"

# The priority is based upon order of creation:
# first created -> highest priority.

# Sample of regular route:
#   match 'products/:id' => 'catalog#view'
# Keep in mind you can assign values other than :controller and :action

# Sample of named route:
#   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
# This route can be invoked with purchase_url(:id => product.id)

# Sample resource route (maps HTTP verbs to controller actions automatically):
# resources :users

#Sample resource route with options:
  resources :users do
    member do
      get 'delete'
    end

  end

  resources :contacts do
    member do
      get 'delete'
    end
  end

  resources :business_types do

    member do
      get 'delete'
    end

  end

  resources :accounts do

    member do
      get 'delete'
    end

  end

  resources :opportunities do

    member do
      get 'delete'
    end

  end

  resources :tasks do

    member do
      get 'delete'
    end

  end

  resources :access do
     member do
      get 'sign_up'
        get 'sign_in'
          get 'logout'
    end
  end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'users#list'

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
#match ':controller(/:action(/:id))(.:format)'
end
