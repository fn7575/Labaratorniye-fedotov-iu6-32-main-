require "selenium-webdriver"
require "rspec"

include RSpec::Expectations

describe "Laba9" do
    before(:each) do
        @driver = Selenium::WebDriver.for :firefox
        @base_url = "http://localhost:3000"
        @driver.manage.timeouts.implicit_wait = 3
        @verification_errors = []
        @data = ["10 - 1010","0101 - 5"]
    end

    after(:each) do
        @driver.quit
        expect(@verification_errors).to eql([])
    end
    
    it "test_lab9" do
        @driver.get(@base_url )
        @driver.find_element(:name, "m").clear
        @driver.find_element(:name, "m").send_keys "10"
        @driver.find_element(:name, "commit").click
        (1..2).each do |x|
            verify{expect(@driver.find_element(:xpath, "/html/body/table[1]/tr[#{x}]/td").text).to eql(@data[x-1])}
        end
       
    end
    
    def element_present?(how, what)
        @driver.find_element(how, what)
        true
        rescue
            Selenium::WebDriver::Error::NoSuchElementError
        false
    end
    def verify(&blk)
        yield
        rescue ExpectationNotMetError => ex
        @verification_errors << ex
    end
end
