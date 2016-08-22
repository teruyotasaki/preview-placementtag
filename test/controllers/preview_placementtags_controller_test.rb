require 'test_helper'

class PreviewPlacementtagsControllerTest < ActionController::TestCase

  def setup
    @base_title = "Preview Placementtag"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Index | #{@base_title}"
  end

  test "should get view" do
    get :view
    assert_response :success
    assert_select "title", "View | #{@base_title}"
  end

end
