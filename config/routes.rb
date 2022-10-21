Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'home#index'
  get 'home/index'
    resources :municipes do
      resources :enderecos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end 