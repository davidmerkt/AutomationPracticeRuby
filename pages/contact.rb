class Contact

    def initialize(driver)
        @driver = driver
    end

    def is_loaded?
        @driver.find_element(css: 'h1.page-heading.bottom-indent').text.include? 'CUSTOMER SERVICE - CONTACT US'
    end

end
