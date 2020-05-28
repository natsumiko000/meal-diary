require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MealDiary
  class Application < Rails::Application
    config.load_defaults 5.2
	
	config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '**', '*.{rb,yml}').to_s]
    config.time_zone = 'Asia/Tokyo'
	config.i18n.default_locale = :ja
  end
end
