require 'selenium-webdriver'
require 'webdrivers'
require_relative '../pages/index'

describe 'Contact Us' do

    before(:each) do
        @driver = Selenium::WebDriver.for :chrome
        @index = Index.new(@driver)
    end

    after(:each) do
        @driver.quit
    end

    it 'Succeeded' do
        @contact = @index.click_contact_us_link
        expect(@contact.is_loaded?).to be_truthy
    end

end
