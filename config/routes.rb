Skeleton::Application.routes.draw do




  resources :contacts
  resources :posts, :as =>:news
  resources :galleries

  namespace "admin" do
    resources :partners    
    resources :staffs
    resources :posts  do 
      resources :albums
    end
    resources :categories
    

    resources :products do 
      resources :albums
    end
    resources :contacts
    resources :pages do 
      resources :albums
    end
    resources :albums do 
      resources :uploads
    end
    match '/update_category' =>"categories#update_categories", :as => :update_categories
    
    match '/update_product_category' =>"products#update_product_categories", :as => :update_product_categories
    match '/update_post_category' =>"posts#update_post_categories", :as => :update_post_categories
    root :to => "overview#index"
  end 
  
  match "/gallery" => "galleries#index", :as => :galleries
  match "/tags/:tag" => "posts#index", :as => :posts
  match "/:name" => "viewer#show", :as => :viewer
  root :to => "viewer#show", :name => "home"
  #root :to => 'home#index'
end
