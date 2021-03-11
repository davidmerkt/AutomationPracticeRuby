require 'selenium-webdriver'
require 'webdrivers'

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
        @driver.find_element locator
    end

    def find_elements(locator)
        @driver.find_elements locator
    end

    def title
        @driver.title
    end
end
