require_relative 'base_page'
require_relative 'header'
require_relative 'contact'
require_relative 'search'

class Index < BasePage

    def initialize(driver)
        super
        navigate_to '/index.php'
        @header = Header.new(@driver)
    end

    def is_loaded?
        @driver.title == 'My Store'
    end

end
