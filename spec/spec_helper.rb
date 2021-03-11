require 'selenium-webdriver'
require 'webdrivers'
require_relative '../framework/driver'

RSpec.configure do |c|

    c.before do |example|
        puts "\nStarting driver"
        @driver = Driver.new
    end

    c.after do |example|
        puts 'Quitting driver'
        @driver.quit
    end

end
