RailsV3::Application.routes.draw do |map|
  # The priority is based upon order of creation:
  # first created -> highest priority.

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
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
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
  #       get :recent, :on => :collection
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
  map.resource 'links', :only => [:show]
  map.resource 'buttons', :only => [:show, :create]
  map.resource 'fields', :only => [:show]
  map.with_options :controller => "webrat" do |webrat|
    webrat.submit             "/submit",            :action => "submit"
    webrat.internal_redirect  "/internal_redirect", :action => "internal_redirect"
    webrat.external_redirect  "/external_redirect", :action => "external_redirect"
    webrat.infinite_redirect  "/infinite_redirect", :action => "infinite_redirect"
    webrat.host_redirect      "/host_redirect",     :action => "host_redirect"

    webrat.before_redirect_form     "/before_redirect_form",    :action => "before_redirect_form"
    webrat.redirect_to_show_params  "/redirect_to_show_params", :action => "redirect_to_show_params"
    webrat.show_params              "/show_params",             :action => "show_params"
    webrat.within                   "/within",                  :action => "within"

    webrat.root :action => "form"
  end
end
