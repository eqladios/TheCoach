# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chapter.create!(number: '1', name: 'Introduction')
Chapter.create!(number: '2', name: 'Time Complexity')
Chapter.create!(number: '3', name: 'Sorting')
Chapter.create!(number: '4', name: 'Data Structures')
Chapter.create!(number: '5', name: 'Complete Search')
User.create!(email: "admin@admin.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)
User.create!(email: "user@user.com",
            password:              "password",
            password_confirmation: "password")
