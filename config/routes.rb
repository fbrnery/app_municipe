Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :municipes do
    resources :enderecos
  end 
end
