require 'test_helper'
require 'nokogiri'

class IndexControllerTest < ActionDispatch::IntegrationTest

 test 'test url xslt' do
        get '/xml?v1=10&side=client-with-xslt'
        assert response.body.include?('browser_converter.xslt')
end
end
