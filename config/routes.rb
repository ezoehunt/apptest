Rails.application.routes.draw do

resources :tweets
devise_for :users
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

# ++++++++++++++++++++
# routes regular users
#scope :app do
#end

# routes for admin users
#namespace :admin do
#end
# ++++++++++++++++++++

get 'welcome/index'
root 'welcome#index'

end
