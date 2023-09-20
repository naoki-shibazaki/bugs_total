Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :new, :create, :edit, :show, :destroy]
  resources :contracts, only:[:index, :new, :create, :edit, :show, :destroy]
  resources :abouts, only:[:index, :new, :create, :edit, :show, :destroy]
  resources :individuals, only:[:index, :new, :create, :edit, :show, :destroy]
  resources :show_pdf, only: :index
end
