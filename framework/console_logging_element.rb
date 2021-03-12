module ConsoleLoggingElement

    def click 
        puts 'Click element'
        super
    end

    def send_keys(*args)
        puts "Type text: #{args}"
        super
    end

    def text
        element_text = super
        puts "Element text: #{element_text}"
        element_text
    end

    def find_element(locator)
        puts "Finding element by: #{locator}"
        super
    end
end
