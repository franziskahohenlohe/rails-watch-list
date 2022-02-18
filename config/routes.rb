Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [ :index, :new, :show, :create ] do
    resources :bookmarks, only: [ :new, :create]
    #GET "lists/42/bookmarks/new"
    #POST "lists/42/bookmarks"
  end
  resources :bookmarks, only: :destroy
  #DELETE "bookmarks/:id"
end
