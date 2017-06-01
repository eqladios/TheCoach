# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Chapter.create!(number: '1', name: 'Introduction')
# Chapter.create!(number: '2', name: 'Time Complexity')
# Chapter.create!(number: '3', name: 'Sorting')
# Chapter.create!(number: '4', name: 'Data Structures')
# Chapter.create!(number: '5', name: 'Complete Search')
# User.create!(email: "admin@admin.com",
#              password:              "password",
#              password_confirmation: "password",
#              admin: true)
# User.create!(email: "user@user.com",
#             password:              "password",
#             password_confirmation: "password")
#Chapter 1
Topic.create!(number: '1', title: 'Programming Languages', htmlContent: '', chapter_id: '1')
Topic.create!(number: '2', title: 'Input And Output', htmlContent: '', chapter_id: '1')
Topic.create!(number: '3', title: 'Working With Numbers', htmlContent: '', chapter_id: '1')
Topic.create!(number: '4', title: 'Shortening Code', htmlContent: '', chapter_id: '1')
Topic.create!(number: '5', title: 'Mathematics', htmlContent: '', chapter_id: '1')

#Chapter 2
Topic.create!(number: '6', title: 'Calculation Rules', htmlContent: '', chapter_id: '2')
Topic.create!(number: '7', title: 'Complexity Classes', htmlContent: '', chapter_id: '2')
Topic.create!(number: '8', title: 'Estimating Efficiency', htmlContent: '', chapter_id: '2')
Topic.create!(number: '9', title: 'Maximum Subarray Sum', htmlContent: '', chapter_id: '2')

#Chapter 3
Topic.create!(number: '10', title: 'Sorting Theory', htmlContent: '', chapter_id: '3')
Topic.create!(number: '11', title: 'Sorting in C++', htmlContent: '', chapter_id: '3')
Topic.create!(number: '12', title: 'Binary Search', htmlContent: '', chapter_id: '3')

#Chapter 4
Topic.create!(number: '13', title: 'Dynamic Arrays', htmlContent: '', chapter_id: '4')
Topic.create!(number: '14', title: 'Set Structures', htmlContent: '', chapter_id: '4')
Topic.create!(number: '15', title: 'Map Structures', htmlContent: '', chapter_id: '4')
Topic.create!(number: '16', title: 'Iterators and Ranges', htmlContent: '', chapter_id: '4')
Topic.create!(number: '17', title: 'Other Structures', htmlContent: '', chapter_id: '4')
Topic.create!(number: '18', title: 'Comparison To Sorting', htmlContent: '', chapter_id: '4')

#Chapter 4
Topic.create!(number: '13', title: 'Generating Subsets', htmlContent: '', chapter_id: '5')
Topic.create!(number: '14', title: 'Generating Permutations', htmlContent: '', chapter_id: '5')
Topic.create!(number: '15', title: 'Backtracking', htmlContent: '', chapter_id: '5')
Topic.create!(number: '16', title: 'Pruning The Search', htmlContent: '', chapter_id: '5')
Topic.create!(number: '17', title: 'Meet In The Middle', htmlContent: '', chapter_id: '5')
