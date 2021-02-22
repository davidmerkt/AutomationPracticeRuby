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

    def find(locator, driver = @driver)
        driver.find_element locator
    end

    def find_elements(locator)
        @driver.find_elements locator
    end

    def click(locator)
        element = find locator
        puts "Clicking #{element.tag_name}: #{element.text}"
        element.click
    end

    def type(locator, text)
        element = find locator
        puts "Populating #{element.tag_name} #{locator} with: #{text}" 
        find(locator).send_keys text
    end

end
