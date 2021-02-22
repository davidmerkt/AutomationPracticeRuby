require_relative 'base_page'
require_relative 'contact'
require_relative 'search'

class Index < BasePage

    CONTACT_US_LINK = {css: "a[title='Contact Us']"}
    SEARCH_INPUTTEXT = {id: "search_query_top"}
    SUBMIT_SEARCH_BUTTON = {css: "button.button-search"}

    def initialize(driver)
        super
        navigate_to '/index.php'
    end

    def is_loaded?
        @driver.title == 'My Store'
    end

    def click_contact_us_link
        click CONTACT_US_LINK
        Contact.new @driver
    end

    def search_for_item(search_query)
        type SEARCH_INPUTTEXT, search_query
        click SUBMIT_SEARCH_BUTTON
        Search.new @driver, search_query
    end

end
