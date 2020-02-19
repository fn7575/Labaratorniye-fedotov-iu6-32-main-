require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get main_input_url
    assert_response :success
  end

  test "should get view" do
    get main_view_url
    assert_response :success
  end
test "should get 4 number" do
  get main_view_url, params:  {m: 4}
  assert_equal assigns[:res], ["4 - 100","001 - 1"]
end
test " get -4 number" do
  get main_view_url, params:  {m: -4}
  assert_equal assigns[:res], []
end
test " get m error" do
  get main_view_url, params:  {m: "m"}
  assert_equal assigns[:res], []
end

end
