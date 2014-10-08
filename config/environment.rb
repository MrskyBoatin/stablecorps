# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
:address => ‘smtpout.secureserver.net’,
  :domain  => ‘www.stablecorps.com’,
:port      => 80,
  :user_name => ‘sboateng@stablecorps.com’,
:password => ‘sam16boat91’,
:authentication => :plain
}