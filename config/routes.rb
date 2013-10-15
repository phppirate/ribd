TestApp::Application.routes.draw do
  resources :posts

  match "about" => 'main#about', via: :get
  match "contact" => 'main#contact', via: :get

  root :to => 'main#index'
end
