Rails.application.routes.draw do

devise_for :users
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

#resources :tweets

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
