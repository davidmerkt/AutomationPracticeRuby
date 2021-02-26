require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/index'

describe 'Product Search' do

    before(:each) do
        @index = Index.new(@driver)
    end

    it 'Search successful' do
        search_item = 'shirt'
        @search = @index.header.search_for_item search_item
        
        expect(@search.is_loaded?).to be_truthy
        expect(@search.valid_results?).to be_truthy, 
            "Invalid items returned.\nSearched for: \"#{search_item}\".\nSearch results included: #{@search.invalid_search_results}"
    end
    
end
