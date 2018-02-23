require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get accelerate" do
    get cars_accelerate_url
    assert_response :success
  end

  test "should get lights" do
    get cars_lights_url
    assert_response :success
  end

  test "should get brake" do
    get cars_brake_url
    assert_response :success
  end

end
