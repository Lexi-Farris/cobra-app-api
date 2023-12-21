#attendances
Attendance.create(class_name: "vinyassa", instructor_name: "River", user_id: 1)
Attendance.create(class_name: "yin", instructor_name: "Sky", user_id: 2)
Attendance.create(class_name: "vinyassa II", instructor_name: "Mountain", user_id: 3)

#Favorites
Favorite.create(class_id:1, studio_id:1, instructor_id:1, class_name: "vinyassa", studio_name: "Urban Sanctuary", instructor_name: "Riley")

#Users
User.create(name: "Joanne", email: "joanne@test.com", password: "test", password_digest: "test", city: "Denver", state: "CO", zipcode: 80014)
