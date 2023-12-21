require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
 
  test "index" do
    get "/favorite.json"
    assert response 200

    data=JSON.parse(response.body)
    assert_equal Favorite.count, data.length
  end

end
