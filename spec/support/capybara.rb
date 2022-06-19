require 'capybara/rspec'
require 'webdrivers'

Capybara.register_driver :chrome do
  Selenium::WebDriver.logger.level = :error
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.server = :puma
