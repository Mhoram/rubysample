Rails.application.routes.draw do


  resources :message_statuses
  
  get 'consume/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get  '/home', to: 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'help'
  get  '/contact', to: 'static_pages#contact'
  get  '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'

end
