require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/index'

describe 'Product Search' do

    before(:each) do
        @index = Index.new(@driver)
    end

    it 'Search successful' do
        @search = @index.search_for_item 'shirt'
        
        expect(@search.is_loaded?).to be_truthy
        expect(@search.valid_results?).to be_truthy
    end
    
end
