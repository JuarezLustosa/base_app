require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL, type: :request
  driver_shares_db_connection_with_specs = Capybara.current_driver == :rack_test
end
