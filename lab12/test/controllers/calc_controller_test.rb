require 'test_helper'

class CalcControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get calc_input_url
    assert_response :success
  end

  test "should get view" do
    get calc_view_url, params: {val: 16}
    assert_response :success
    assert_in_delta 4,assigns[:result],0.001
  end



end
