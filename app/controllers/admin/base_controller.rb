# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
=begin
  include ActionView::Helpers::TextHelper
  include RailsAdmin::MainHelper
  include RailsAdmin::ApplicationHelper
  include RailsAdmin::Engine.routes.url_helpers

  layout 'layouts/rails_admin/application'
=end

    before_filter :authenticate_user!
    
# EOF
end
