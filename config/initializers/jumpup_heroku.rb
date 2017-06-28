Jumpup::Heroku.configure do |config|
  config.app = 'fit-messages'
end if Rails.env.development?
