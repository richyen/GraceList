Rails.application.routes.draw do
  resources :posts

  resources :home do
    collection do
      get 'about'
    end
  end

  root :to => "home#index"
end
