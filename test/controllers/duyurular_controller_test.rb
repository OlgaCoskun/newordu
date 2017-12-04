require 'test_helper'

class DuyurularControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get duyurular_index_url
    assert_response :success
  end

end
