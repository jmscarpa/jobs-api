require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Project
  class Application < Rails::Application
    config.load_defaults 7.0
    config.i18n.default_locale = :'pt-BR'
    config.generators.system_tests = nil
    config.api_only = true
  end
end
