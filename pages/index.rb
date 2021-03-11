require_relative 'header'
require_relative 'contact'
require_relative 'search'

class Index

    attr_reader :header

    def initialize(driver)
        @driver = driver
        @driver.navigate_to '/index.php'
        @header = Header.new(@driver)
    end

    def is_loaded?
        @driver.title == 'My Store'
    end

end
