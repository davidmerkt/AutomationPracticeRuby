require_relative 'base_page'

class Index < BasePage

    def initialize(driver)
        super
        navigate_to '/index.php'
    end

    def is_loaded?
        @driver.title == 'My Store'
    end

end
