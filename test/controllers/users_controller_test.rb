require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: {name: "test", email: "test", password: 1234, password_confirmation: 1234, city: "denver", state: "CO", zipcode: 95624}
      assert_response 201
    end
  end


end
