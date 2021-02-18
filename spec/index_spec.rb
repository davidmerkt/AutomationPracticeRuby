require 'selenium-webdriver'
require 'webdrivers'
require_relative '../pages/index'

describe 'Launch' do

    before(:each) do
        @driver = Selenium::WebDriver.for :chrome
        @index = Index.new(@driver)
    end

    after(:each) do
        @driver.quit
    end

    it 'succeeded' do
        expect(@index.is_loaded?).to be_truthy
    end

end