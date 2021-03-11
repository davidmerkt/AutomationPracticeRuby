require 'selenium-webdriver'
require 'webdrivers'
require_relative '../framework/driver'
require_relative '../framework/console_logging_driver'

RSpec.configure do |c|

    c.before do |example|
        @driver = Driver.new
        @driver.extend ConsoleLoggingDriver
    end

    c.after do |example|
        @driver.quit
    end

end
