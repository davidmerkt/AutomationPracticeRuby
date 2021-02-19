require_relative 'base_page'

class Contact < BasePage

    def initialize(driver)
        super
    end

    def is_loaded?
        @driver.find_element(css: 'h1.page-heading.bottom-indent').text.include? 'CUSTOMER SERVICE - CONTACT US'
    end

end
