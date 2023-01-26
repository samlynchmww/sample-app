# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(name: "Sam Example",
            email: "sam@railstutorial.org",
            password: "foobar",
            password_confirmation: "foobar",
            admin: true
        )
4.times do |n| 
    name = Faker::Name.name 
    email = "sam-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password)
end