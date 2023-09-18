require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  # ストーリー単位でテストを書くと良い．

  test "Invalid signup information" do
    get signup_path # => GET /signup
    assert_no_difference "User.count" do # 実行メソットがDO前後で変わらない場合
      post users_path, params: { user: { name: "",
        email: "user@invalid",
        password: "foo",
        password_confirmation: "bar" } }
    end
    assert_response :unprocessable_entity
    assert_template "users/new"
  end
end
