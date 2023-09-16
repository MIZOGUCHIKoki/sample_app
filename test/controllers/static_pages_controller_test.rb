require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    # GET /static_pages/home
    get root_path
    # RSP 200 〜なはずだ
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    # GET /static_pages/help
    get help_path
    # RSP 200 〜なはずだ
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    # GET /static_pages/help
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
