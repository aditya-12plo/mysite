require_relative 'boot'

require 'rails/all'
require 'pdfkit'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mysite
  class Application < Rails::Application

#for print pdf
config.middleware.use PDFKit::Middleware

# from send email contact
config.action_mailer.delivery_method = :sendmail
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true




  end
end
