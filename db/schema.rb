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

ActiveRecord::Schema.define(version: 2020_12_24_215436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chinema_likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chinema_id"], name: "index_chinema_likes_on_chinema_id"
    t.index ["user_id"], name: "index_chinema_likes_on_user_id"
  end

  create_table "chinemas", force: :cascade do |t|
    t.bigint "user_id"
    t.string "chinema_name"
    t.text "chinema_body"
    t.string "address"
    t.string "url"
    t.string "chinema_image"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chinemas_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "chinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chinema_id"], name: "index_comments_on_chinema_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_favorites_on_movie_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chinema_id"], name: "index_likes_on_chinema_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "movie_comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_comments_on_movie_id"
    t.index ["user_id"], name: "index_movie_comments_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.bigint "user_id"
    t.string "movie_name"
    t.text "movie_body"
    t.string "movie_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_movies_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "username"
    t.text "profile"
    t.string "profile_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "chinema_likes", "chinemas"
  add_foreign_key "chinema_likes", "users"
  add_foreign_key "chinemas", "users"
  add_foreign_key "comments", "chinemas"
  add_foreign_key "comments", "users"
  add_foreign_key "favorites", "movies"
  add_foreign_key "favorites", "users"
  add_foreign_key "likes", "chinemas"
  add_foreign_key "likes", "users"
  add_foreign_key "movie_comments", "movies"
  add_foreign_key "movie_comments", "users"
  add_foreign_key "movies", "users"
end
