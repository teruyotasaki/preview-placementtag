require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'preview_placementtags/index'
    assert_select "a[href=?]", root_path, count: 3
  end

end
