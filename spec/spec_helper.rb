require 'selenium-webdriver'
require 'webdrivers'

RSpec.configure do |c|

    c.before do |example|
        puts "\nStarting driver"
        @driver = Selenium::WebDriver.for :firefox
    end

    c.after do |example|
        puts 'Quitting driver'
        @driver.quit
    end

end
