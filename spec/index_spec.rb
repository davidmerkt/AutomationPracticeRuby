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
        title = @driver.title
        expect(title).to eql('My Store')
    end

end