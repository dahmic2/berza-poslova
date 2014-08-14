require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'carrierwave'
require 'carrierwave/orm/activerecord'


Bundler.require(:default, Rails.env)

module BerzaPoslova
  class Application < Rails::Application
   # config.autoload_paths += %W(#{config.root}/uploaders)
    config.assets.initialize_on_precompile = false

    I18n.enforce_available_locales = false
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :hr

  end
end
