TestApp::Application.routes.draw do
  devise_for :users
  resources :posts

  match "about" => 'main#about', via: :get
  match "contact" => 'main#contact', via: :get

  root :to => 'main#index'
end
