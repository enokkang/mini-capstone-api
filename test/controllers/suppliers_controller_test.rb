require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  test "should get Supplier" do
    get suppliers_Supplier_url
    assert_response :success
  end
end
