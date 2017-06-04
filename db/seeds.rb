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
#Chapter 1
Topic.create!(number: '1', title: 'Programming Languages', chapter_id: '1')
Topic.create!(number: '2', title: 'Input And Output', chapter_id: '1')
Topic.create!(number: '3', title: 'Working With Numbers', chapter_id: '1')
Topic.create!(number: '4', title: 'Shortening Code', chapter_id: '1')
Topic.create!(number: '5', title: 'Mathematics', chapter_id: '1')

#Chapter 2
Topic.create!(number: '6', title: 'Calculation Rules', chapter_id: '2')
Topic.create!(number: '7', title: 'Complexity Classes', chapter_id: '2')
Topic.create!(number: '8', title: 'Estimating Efficiency', chapter_id: '2')
Topic.create!(number: '9', title: 'Maximum Subarray Sum', chapter_id: '2')

#Chapter 3
Topic.create!(number: '10', title: 'Sorting Theory', chapter_id: '3')
Topic.create!(number: '11', title: 'Sorting in C++', chapter_id: '3')
Topic.create!(number: '12', title: 'Binary Search', chapter_id: '3')

#Chapter 4
Topic.create!(number: '13', title: 'Dynamic Arrays', chapter_id: '4')
Topic.create!(number: '14', title: 'Set Structures', chapter_id: '4')
Topic.create!(number: '15', title: 'Map Structures', chapter_id: '4')
Topic.create!(number: '16', title: 'Iterators and Ranges', chapter_id: '4')
Topic.create!(number: '17', title: 'Other Structures', chapter_id: '4')
Topic.create!(number: '18', title: 'Comparison To Sorting', chapter_id: '4')

#Chapter 4
Topic.create!(number: '19', title: 'Generating Subsets', chapter_id: '5')
Topic.create!(number: '20', title: 'Generating Permutations', chapter_id: '5')
Topic.create!(number: '21', title: 'Backtracking', chapter_id: '5')
Topic.create!(number: '22', title: 'Pruning The Search', chapter_id: '5')
Topic.create!(number: '23', title: 'Meet In The Middle', chapter_id: '5')
#Create Slides
Slide.create!(number: '1', htmlBody: '<h1>1</h1>', topic_id: '1')
Slide.create!(number: '2', htmlBody: '<h1>2</h1>', topic_id: '1')
Slide.create!(number: '3', htmlBody: '<h1>3</h1>', topic_id: '1')

Slide.create!(number: '1', htmlBody: '<h1>1</h1>', topic_id: '2')
Slide.create!(number: '2', htmlBody: '<h1>2</h1>', topic_id: '2')
Slide.create!(number: '3', htmlBody: '<h1>3</h1>', topic_id: '2')

Slide.create!(number: '1', htmlBody: '<h1>1</h1>', topic_id: '3')
Slide.create!(number: '2', htmlBody: '<h1>2</h1>', topic_id: '3')
Slide.create!(number: '3', htmlBody: '<h1>3</h1>', topic_id: '3')

Slide.create!(number: '1', htmlBody: '<h1>1</h1>', topic_id: '3')
Slide.create!(number: '2', htmlBody: '<h1>2</h1>', topic_id: '3')
Slide.create!(number: '3', htmlBody: '<h1>3</h1>', topic_id: '3')
