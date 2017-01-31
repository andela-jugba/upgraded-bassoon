require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test 'GET ping' do
    get  version_url

    assert_response :success
    assert(response, 'is')
  end



end
