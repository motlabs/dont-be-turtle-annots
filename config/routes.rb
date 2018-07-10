Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'main#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
