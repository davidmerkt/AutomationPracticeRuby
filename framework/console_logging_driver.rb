module ConsoleLoggingDriver
    def initialize
        puts 'Initializing driver'
        super
    end

    def quit
        puts 'Closing driver'
        super
    end

    def navigate_to(url)
        puts "Navigating to: #{url}"
        super
    end

    def find_element(locator)
        puts "Locating element by: #{locator}"
        super
    end

    def find_elements(locator)
        puts "Locating elements by: #{locator}"
        super
    end

    def title
        page_title = super
        puts "Identified page title: #{page_title}"
        page_title
    end
end
