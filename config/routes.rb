Rails.application.routes.draw do

  devise_for :users
  root "feeds#index"


  get :privacy_policy, to: "static_pages#privacy_policy"
  get :contact, to: "static_pages#contact"
  post :messages, to: 'static_pages#messages'
  get "sitemap.xml" => "static_pages#sitemap", format: :xml, as: :sitemap
  get "robots.txt" => "static_pages#robots", format: :text, as: :robots
  get :subcategory_options, to: "deals#subcategory_options"

  resources :feeds, only: [:index]
  resources :deals do
    resources :comments, only: :create
  end

    get :men, to: "deals#men"
    get :women, to: "deals#women"
    get :beauty, to: "deals#beauty"

  resources :retailers, only: [:index, :show] do
    collection do
      post :import
    end
  end

  resources :articles, only: [:index, :create]
  get :get_article, to: "articles#get_article"

  namespace :admin do
    resources :deals do
      collection do
        post :import
        get :edit_multiple
        put :update_multiple
      end
    end
    resources :retailers do
      collection do
        post :import
      end
    end
  end

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
