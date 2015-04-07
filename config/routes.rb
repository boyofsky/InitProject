Rails.application.routes.draw do

  
  devise_for :users
  # rails g controller home index  產生index 頁面
  # You can have the root of your site routed with "root"
  root 'home#index'
  
  namespace :backend do
    get 'dashboard', to: 'dashboard#index'
  end

end
