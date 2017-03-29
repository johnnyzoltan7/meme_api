require 'test_helper'

class MemesControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get memes_generate_url
    assert_response :success
  end

end
