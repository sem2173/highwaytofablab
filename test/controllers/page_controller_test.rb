require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test ":contact" do
    get :contact
    assert_response :success
  end

  test ":about" do
    get :about
    assert_response :success
  end
end
