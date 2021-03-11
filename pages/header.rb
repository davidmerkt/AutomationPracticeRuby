class Header

    CONTACT_US_LINK = {css: "a[title='Contact Us']"}
    SEARCH_INPUTTEXT = {id: "search_query_top"}
    SUBMIT_SEARCH_BUTTON = {css: "button.button-search"}
    
    def initialize(driver)
        @driver = driver
    end

    def click_contact_us_link
        element = @driver.find_element CONTACT_US_LINK
        element.click
        Contact.new @driver
    end

    def search_for_item(search_query)
        @driver.find_element(SEARCH_INPUTTEXT).send_keys search_query
        @driver.find_element(SUBMIT_SEARCH_BUTTON).click
        Search.new @driver, search_query
    end

end
