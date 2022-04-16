# Create a main sample user.
User.create!(name: "Instructor",
             email: "instructor@osu.edu",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

