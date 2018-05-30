# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'bencaneba', password: 'password', first_name: 'Ben', last_name: 'Caneba', email: 'ben_caneba@kleinschmidt.com', phone: '9062314010')

school1 = School.create(name: "Minnesota State University", city: "Minneapolis", state: "MN")
school2 = School.create(name: "Oklahoma State University", city: "Ok City", state: "OK")
school3 = School.create(name: "Delaware State University", city: "Dover", state: "DE")
school4 = School.create(name: "Oregon State University", city: "Beaverton", state: "OR")
school5 = School.create(name: "Detroit State University", city: "Detroit", state: "MI")

course1 = school1.courses.build(name: "Accounting 101", description: "Basic Accounting principles").save
course2 = school1.courses.build(name: "Mathematics 301", description: "Advanced Math principles").save
course3 = school1.courses.build(name: "Engineering 400", description: "Intermediate Engineering principles").save

course4 = school2.courses.build(name: "Accounting 101", description: "Basic Accounting principles").save
course5 = school2.courses.build(name: "Mathematics 301", description: "Advanced Math principles").save

course6 = school3.courses.build(name: "Accounting 101", description: "Basic Accounting principles").save
course7 = school3.courses.build(name: "Mathematics 301", description: "Advanced Math principles").save

course8 = school4.courses.build(name: "Accounting 101", description: "Basic Accounting principles").save
course9 = school4.courses.build(name: "Mathematics 301", description: "Advanced Math principles").save

course10 = school5.courses.build(name: "Accounting 101", description: "Basic Accounting principles").save
course11 = school5.courses.build(name: "Mathematics 301", description: "Advanced Math principles").save




#make our only user a student of the school we created
# user_school = user.user_schools.build(school1).save
#make our only user take accounting course
# user_course = user.user_courses.build(course1).save

# create a favorite course for the user
# UserFavorite.create(user_id: 1, course_id: 1)
user_favorite = user.user_favorites.build(favorite_type: 'Course', favorite_id: 1).save

# create a post that belongs to our one user
# Post.create(title: "First Post", description: "This is the first post", user_id: 1, school_id: 1, course_id: 1)
post = user.posts.build(title: "First Post", description: "This is the first post", relationship_type: 'Course', relationship_id: 1).save

# make the user into a tutor
# @user = User.first
# @user.update(tutor: 'true')
# @user.save

# create tutor profile for the user
# UserTutor.create(id: 1, rate: 12, description: "I am great at Math!", user_id: 1, course_id: 1)
user_tutor = user.user_tutors.build(rate: 12, rate_type: 'Hourly', description: "I am great at Math!", course_id: 1).save

# find the courses that a user is a tutor of
# puts @user.is_tutors.find_by(course_id: @user.courses.first.id)

# create a friendship between the 2 users
user2 = User.create(first_name: "George", last_name: "Costanza", email: "gcostanza@gmail.com", phone: "9064564010", username: "gcostanza", password: "password")
# Friendship.create(user_id: 1, friend_id: 2)
friendship = user.friendships.build(friend_id: 2).save








