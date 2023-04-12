# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_12_214931) do
  create_table "audio_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "audio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["audio_id"], name: "index_audio_comments_on_audio_id"
    t.index ["user_id"], name: "index_audio_comments_on_user_id"
  end

  create_table "audios", force: :cascade do |t|
    t.string "title"
    t.string "thumbnail"
    t.string "category"
    t.text "description"
    t.boolean "verification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "blog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
    t.index ["user_id"], name: "index_blog_comments_on_user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "thumbnail"
    t.string "category"
    t.text "description"
    t.text "content"
    t.boolean "verification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "user_type"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "video_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_comments_on_user_id"
    t.index ["video_id"], name: "index_video_comments_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "thumbnail"
    t.string "video"
    t.string "category"
    t.text "description"
    t.boolean "verification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "audio_comments", "audios"
  add_foreign_key "audio_comments", "users"
  add_foreign_key "blog_comments", "blogs"
  add_foreign_key "blog_comments", "users"
  add_foreign_key "video_comments", "users"
  add_foreign_key "video_comments", "videos"
end
