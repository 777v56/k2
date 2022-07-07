Rails.application.routes.draw do
  resources :books
  patch 'book/:id' => 'books#update', as: 'update_book'
  delete 'book/:id' => 'books#destroy', as: 'destroy_book'
end
