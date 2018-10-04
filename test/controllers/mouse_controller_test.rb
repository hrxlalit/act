require 'test_helper'

class MouseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mouse_index_url
    assert_response :success
  end

end
