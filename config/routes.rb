RapCms::Application.routes.draw do
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  resources :sessions

  namespace :admin do
    resources :users
    resources :news
    resources :producions
    resources :events
    resource :settings
    # resources :sites do
    #   resource :contact, :stylesheet
    #   resources :assets, :layouts, :image_sizes, :domains
    #   resources :layout_resources do
    #     post :upload, on: :collection, :as => 'upload'
    #   end
    #   resources :images do
    #     post :upload, on: :collection, :as => 'upload'
    #   end
    #   resources :pages do
    #     get :preview, on: :member, :as => 'preview'
    #     collection do
    #       get :manage
    #       post :rebuild
    #     end
    #     resources :news, :items
    #     resources :gallery_images do
    #       post :sort, on: :collection, :as => 'sort'
    #     end
    #   end
    # end
    # get '/settings', :to => "settings#index"
    # get '/help', :to => "home#help"
    # root :to => 'pages#manage'
    # match '/tinymce/images' => 'home#images', :as => "tinymce_images"
    # match '/tinymce/image_size/:id(/:size)' => 'home#image_size', :as => "tinymce_image_size"
    # match '/tinymce/image_sizes' => 'home#image_sizes', :as => "tinymce_image_sizes"
    # match '/tinymce/pages' => 'home#pages', :as => "tinymce_pages"
    root :to => 'home#index'
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.
  resource :home
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
