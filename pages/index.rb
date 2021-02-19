require_relative 'base_page'
require_relative 'contact'

class Index < BasePage

    CONTACT_US_LINK = {css: "a[title='Contact Us']"}

    def initialize(driver)
        super
        navigate_to '/index.php'
    end

    def is_loaded?
        @driver.title == 'My Store'
    end

    def click_contact_us_link
        @driver.find_element(CONTACT_US_LINK).click
        Contact.new(@driver)
    end

end
