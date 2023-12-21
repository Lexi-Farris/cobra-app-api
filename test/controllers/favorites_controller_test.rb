require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do
    get "/favorite.json"
    assert_response 200

    data=JSON.parse(response.body)
    assert_equal Favorite.count, data.length
  end

  # test "show" do
  #   get "/favorite/#{Favorite.first.id}"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["class_name", "instructor_name"]
  # end

  test "create" do
    assert_difference "Favorite.count", 1 do 
      post "/favorite.json", params: {class_name: "vinyassa", instructor_name: "julie", studio_name: "Urban Sanctuary"}
      assert_response 200
    end
  end
  

end
