require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber'
require 'rspec'
require 'faker'

Capybara.configure do |config|
  config.default_driver        = :selenium_chrome
  config.app_host              = 'http://sampleapp.tricentis.com'
  config.default_max_wait_time = 10
end
