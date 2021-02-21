require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/index'

describe 'Launch' do

    before(:each) do
        # @driver = Selenium::WebDriver.for :chrome
        @index = Index.new(@driver)
    end

    it 'succeeded' do
        expect(@index.is_loaded?).to be_truthy
    end

end
