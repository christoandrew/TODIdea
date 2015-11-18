# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151116191937) do

  create_table "article_tags", id: false, force: :cascade do |t|
    t.integer "article_id", limit: 4, null: false
    t.integer "tag_id",     limit: 4, null: false
  end

  add_index "article_tags", ["article_id"], name: "article_id", using: :btree
  add_index "article_tags", ["tag_id"], name: "tag_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "article_title", limit: 255
    t.text     "article_text",  limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "category_id",   limit: 4,     null: false
    t.integer  "user_id",       limit: 4,     null: false
    t.string   "photo",         limit: 225,   null: false
  end

  add_index "articles", ["category_id"], name: "category_id", using: :btree
  add_index "articles", ["user_id"], name: "user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "comment",    limit: 255
    t.integer  "article_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "comments", ["article_id"], name: "fk_rails_3bf61a60d3", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "event_name",  limit: 255
    t.datetime "date"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "photo",      limit: 255
    t.integer  "gallery_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "photo",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tag_name",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "testimonials", ["user_id"], name: "user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "surname",    limit: 255
    t.string   "last_name",  limit: 255
    t.string   "user_type",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "article_tags", "articles", name: "article_tags_ibfk_1"
  add_foreign_key "article_tags", "tags", name: "article_tags_ibfk_2"
  add_foreign_key "articles", "categories", name: "articles_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "articles", "users", name: "articles_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "comments", "articles"
  add_foreign_key "testimonials", "users", name: "testimonials_ibfk_1", on_update: :cascade, on_delete: :cascade
end
