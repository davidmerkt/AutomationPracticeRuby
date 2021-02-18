require 'selenium-webdriver'

class BasePage

    def initialize(driver)
        @driver = driver
    end

    def navigate_to(url)
        if !url.start_with? 'http'
            url = "http://automationpractice.com#{url}"
        end

        puts "Navigating to: #{url}"
        @driver.navigate.to url
    end

end
