require "test_helper"

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/attendance.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Attendance.count, data.length
  end

  test "show" do
    get "/attendance/#{Attendance.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["class_name", "instructor_name"], data.keys
  end
  
  


end
