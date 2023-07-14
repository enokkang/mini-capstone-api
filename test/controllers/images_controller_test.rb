require "test_helper"

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Image" do
    get images_Image_url
    assert_response :success
  end
end
