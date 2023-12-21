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
  
  test "update" do
    favorite = Favorite.first
    patch "/favorite/#{favorite.id}.json", params: {class_name: "Updated Class"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated Class", data["class_name"]
  end

  test "destroy" do 
    assert_difference "Favorite.count", -1 do 
      delete "/favorite/#{Favorite.first.id}.json"
      assert_response 200
    end
  end

end
