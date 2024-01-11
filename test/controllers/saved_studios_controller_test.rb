require "test_helper"

class SavedStudiosControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    User.create(name: "Geo", email: "Geo@test.com", password: "1234",  password_confirmation: "1234", city: "sacramento", state: "CA", zipcode: 95624)
    post "/sessions.json", params: {email: "Geo@test.com", password: 1234}
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end


  test "destroy" do
    assert_difference "SavedStudio.count", -1 do 
      delete "/saved/#{SavedStudio.first.id}.json",
      headers: {"Authorization" => "Bearer #{@jwt}"}
      assert_response 200
    end
  end

end
