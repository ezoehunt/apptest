require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

ENV['RAILS_ADMIN_THEME'] = 'material'

module Bestofpotus
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Stop Rails from generating css/js per controller
    config.generators do |g|
      g.assets false
    end

  end
end
