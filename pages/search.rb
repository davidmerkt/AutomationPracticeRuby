require_relative 'base_page'

class Search < BasePage

    def initialize(driver, search_query = '')
        super(driver)
        parse_results(search_query)
    end

    def is_loaded?
        @driver.title == 'Search - My Store'
    end

    def parse_results(search_query)
        product_cards = find_elements(css: '.ajax_block_product')

        @search_results = Array.new
        @valid_search_results = Array.new
        @invalid_search_results = Array.new

        product_cards.each do |product_card|
            product_name = find({css: 'a.product-name'}, product_card).text
            @search_results.push(product_name)
            if product_name.downcase.include? search_query.downcase
                @valid_search_results.push(product_name)
            else
                @invalid_search_results.push(product_name)
            end
        end

    end

    def valid_results?

        @invalid_search_results.length == 0
        
    end

end
