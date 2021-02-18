class Index

    def initialize(driver)
        @driver = driver
        @driver.navigate.to 'http://automationpractice.com/index.php'
    end

end
