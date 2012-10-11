CrmBranchcore::Application.routes.draw do


#get "access/sing_up"

#get "access/logout"

#get "access/sign_in"

# The priority is based upon order of creation:
# first created -> highest priority.


root :to => 'access#sign_in'  

# Sample of regular route:

match 'access/sign_in' => 'access#sign_in'
match 'access/sign_up' => 'access#sign_up'
match 'access/logout' => 'access#logout'
match 'access/attempt_login' => 'access#attempt_login'



# Keep in mind you can assign values other than :controller and :action

# Sample of named route:
#   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
# This route can be invoked with purchase_url(:id => product.id)

# Sample resource route (maps HTTP verbs to controller actions automatically):
# resources :users

#Sample resource route with options:

namespace :admin do

root :to => 'users#index'

  resources :users, :except => [:show] do
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

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
#match ':controller(/:action(/:id))(.:format)'
end
