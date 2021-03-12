require 'selenium-webdriver'
require 'webdrivers'
require_relative 'element'
require_relative 'console_logging_element'

class Driver
    def initialize
        @driver = Selenium::WebDriver.for :firefox
    end

    def quit
        @driver.quit
    end

    def navigate_to(url)
        if !url.start_with? 'http'
            url = "http://automationpractice.com#{url}"
        end

        @driver.navigate.to url
    end

    def find_element(locator)
        element = @driver.find_element locator
        framework_element = Element.new @driver, element, locator
        framework_element.extend ConsoleLoggingElement
        framework_element
    end

    def find_elements(locator)
        @driver.find_elements locator
    end

    def title
        @driver.title
    end
end
