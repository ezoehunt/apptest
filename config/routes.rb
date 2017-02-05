Rails.application.routes.draw do

# MUST BE BEFORE RAILS ADMIN
namespace :admin do
  #resource :custom
  get '/extimport', to: 'extimport#index', as: '/admin/extimport'
end

resources :tweets
devise_for :users
mount RailsAdmin::Engine => '/admin', as: 'rails_admin'



# ++++++++++++++++++++
# routes regular users
#scope :app do
#end

# routes for admin users
#namespace :admin do
  #get '', to: 'dashboard#index', as: '/'
  #get '/admin/congress'
#end
# ++++++++++++++++++++

get 'welcome/index'
root 'welcome#index'

end
