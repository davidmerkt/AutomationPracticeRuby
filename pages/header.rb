require_relative 'base_page'

class Header < BasePage

    CONTACT_US_LINK = {css: "a[title='Contact Us']"}
    SEARCH_INPUTTEXT = {id: "search_query_top"}
    SUBMIT_SEARCH_BUTTON = {css: "button.button-search"}
    
    def initialize(driver)
        super
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
