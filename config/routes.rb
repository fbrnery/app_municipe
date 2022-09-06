Rails.application.routes.draw do
  resources :municipes do
    resources :enderecos
  end 
end
