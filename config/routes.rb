Rails.application.routes.draw do
  namespace :api do
    resources :users, :articles, :comments
  end
end
