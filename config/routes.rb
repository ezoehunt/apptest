Rails.application.routes.draw do

#devise_for :admins
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'



# routes regular users
#scope :app do

#end

# routes for admin users
#namespace :admin do

#end

get 'welcome/index'
root 'welcome#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
