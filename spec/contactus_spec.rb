require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/index'

describe 'Contact Us' do

    before(:each) do
        @index = Index.new(@driver)
    end

    it 'succeeded' do
        @contact = @index.click_contact_us_link
        expect(@contact.is_loaded?).to be_truthy
    end

end
