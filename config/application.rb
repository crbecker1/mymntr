require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CitizenRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # one HTTP auth password for the entire site
    config.require_site_login = false # disabled by default
    config.site_username = 'smart'
    config.site_password = 'smart'

    config.allow_signup = true
    config.company_name = "SM+ART"
    config.project_name = "SM+ART"
    config.project_slug = "smart" # must not use dashes
    # appears in main layout meta tag
    config.project_description = "SM+ART"
    config.contact_email = "info@mymntr.com"

    # lib/ is for code that is entirely independent of your Rails app
    # app/lib/ is for code that expects Rails (esp. models) but which is not itself a model
    config.autoload_paths << Rails.root.join("app", "lib")
    config.autoload_paths << Rails.root.join("app", "jobs")

    # e-mail
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.perform_deliveries = true
  end
end
