Rails.application.routes.draw do
  get 'about', to:'pages#about' 

  get 'contact', to: 'pages#contact', as:'lead'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end