require 'selenium-webdriver'

class Element

    attr_reader :locator

    def initialize(driver, element, locator)
        @driver = driver
        @element = element
        @locator = locator
    end

    def click 
        @element.click
    end

    def send_keys(*args)
        @element.send_keys *args 
    end

    def text
        @element.text
    end

    def find_element(locator)
        new_element = @element.find_element locator
        framework_element = Element.new @driver, new_element, locator
        framework_element.extend ConsoleLoggingElement
        framework_element
    end
end
