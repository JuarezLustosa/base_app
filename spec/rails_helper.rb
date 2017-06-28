ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'shoulda/matchers'
require 'email_spec'
require 'capybara/rspec'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.render_views
  config.include FactoryGirl::Syntax::Methods
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
  config.include ActiveSupport::Testing::TimeHelpers
  config.include Warden::Test::Helpers
  config.include Devise::Test::ControllerHelpers, :type => :controller
  config.extend ControllerMacros, :type => :controller

  config.before :suite do
    Warden.test_mode!
  end

  config.after :each do
    Warden.test_reset!
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
