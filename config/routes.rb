Rails.application.routes.draw do
 
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
 
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
 
  root 'posts#index'

  #Prefix Verb  URI Pattern                             Controller#Action
  #author_posts GET   /authors/:author_id/posts(.:format)     posts#index
  # author_post GET   /authors/:author_id/posts/:id(.:format) posts#show
  #      author GET   /authors/:id(.:format)                  authors#show
  #       posts GET   /posts(.:format)                        posts#index
  #             POST  /posts(.:format)                        posts#create
  #    new_post GET   /posts/new(.:format)                    posts#new
  #   edit_post GET   /posts/:id/edit(.:format)               posts#edit
  #        post GET   /posts/:id(.:format)                    posts#show
  #             PATCH /posts/:id(.:format)                    posts#update
  #             PUT   /posts/:id(.:format)                    posts#update
  #        root GET   /                                       posts#index
end
