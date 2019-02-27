Rails.application.routes.draw do
resources :authors, :books

resources :author_books, only: [:create]

end
