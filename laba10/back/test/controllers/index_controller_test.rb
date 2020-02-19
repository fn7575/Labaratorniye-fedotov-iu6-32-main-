require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
   test "should get index" do
      get '/123', params: {format: :xml }
        assert_response :success
        assert_includes @response.headers['Content-Type'], 'application/xml'
    end


  test 'should get 0 for negative numbers' do
  get '/-10'
  assert_equal assigns[:res], []
  end

  test 'should get 0 for string' do
  get '/test'
  assert_equal assigns[:res],[]
  end

  test 'should get res' do
  get '/10'
  assert_equal assigns[:res], ["10 - 1010","0101 - 5"]
  end

end
