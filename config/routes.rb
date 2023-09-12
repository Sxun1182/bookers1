Rails.application.routes.draw do
 
  root to: 'homes#top'
  get '/top' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #resources :books #7章削除機能の追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
