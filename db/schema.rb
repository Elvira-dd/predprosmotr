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

ActiveRecord::Schema[7.2].define(version: 2024_10_06_184710) do
  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "date"
    t.integer "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "podcast"
    t.string "references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "date"
    t.boolean "is_comments_open"
    t.string "link"
    t.string "hashtag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "text"
    t.integer "podcast_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["podcast_id"], name: "index_tags_on_podcast_id"
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "tags", "podcasts"
end
