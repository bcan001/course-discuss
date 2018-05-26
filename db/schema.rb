# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_23_123808) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id", "name"], name: "index_courses_on_school_id_and_name"
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.string "relationship_type"
    t.integer "relationship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relationship_type", "relationship_id"], name: "index_posts_on_relationship_type_and_relationship_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city"], name: "index_schools_on_city"
    t.index ["name"], name: "index_schools_on_name"
    t.index ["state"], name: "index_schools_on_state"
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "user_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.string "favorite_type"
    t.integer "favorite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorite_type", "favorite_id"], name: "index_user_favorites_on_favorite_type_and_favorite_id"
    t.index ["user_id", "favorite_type"], name: "index_user_favorites_on_user_id_and_favorite_type"
  end

  create_table "user_schools", force: :cascade do |t|
    t.integer "user_id"
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_user_schools_on_school_id"
    t.index ["user_id"], name: "index_user_schools_on_user_id"
  end

  create_table "user_tutors", force: :cascade do |t|
    t.integer "rate"
    t.string "rate_type"
    t.string "description"
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_tutors_on_course_id"
    t.index ["user_id", "course_id"], name: "index_user_tutors_on_user_id_and_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
