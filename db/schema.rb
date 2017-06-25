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

ActiveRecord::Schema.define(version: 20170625095849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.string   "image_url"
    t.string   "publisher"
    t.integer  "user_id"
    t.integer  "gender_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "tags"
  end

  add_index "articles", ["gender_id"], name: "index_articles_on_gender_id", using: :btree
  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gender_id"
  end

  add_index "categories", ["gender_id"], name: "index_categories_on_gender_id", using: :btree

  create_table "categories_retailers", force: :cascade do |t|
    t.integer "category_id"
    t.integer "retailer_id"
  end

  add_index "categories_retailers", ["category_id"], name: "index_categories_retailers_on_category_id", using: :btree
  add_index "categories_retailers", ["retailer_id"], name: "index_categories_retailers_on_retailer_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["deal_id"], name: "index_comments_on_deal_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "deals", force: :cascade do |t|
    t.string   "title"
    t.text     "message"
    t.string   "deeplink"
    t.string   "slug"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.string   "picture"
    t.integer  "retailer_id"
    t.string   "tracking_link"
    t.integer  "subcategory_id"
    t.datetime "starts"
    t.datetime "ends"
    t.string   "code"
    t.text     "terms"
    t.integer  "gender_id"
  end

  add_index "deals", ["subcategory_id"], name: "index_deals_on_subcategory_id", using: :btree
  add_index "deals", ["user_id"], name: "index_deals_on_user_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retailers", force: :cascade do |t|
    t.string   "name"
    t.string   "host_url"
    t.string   "part_url"
    t.text     "brief_description"
    t.text     "html_meta_description"
    t.text     "description"
    t.text     "internal_notes"
    t.text     "admin_notes"
    t.text     "support_notes"
    t.text     "search_keywords"
    t.string   "facebook_url"
    t.string   "instagram_url"
    t.string   "favicon"
    t.string   "logo"
    t.string   "cover"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "slug"
    t.integer  "merchant_id"
    t.string   "strap_line"
    t.string   "tracking_link"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id", using: :btree
  add_index "subcategories", ["name"], name: "index_subcategories_on_name", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["context"], name: "index_taggings_on_context", using: :btree
  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy", using: :btree
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree
  add_index "taggings", ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type", using: :btree
  add_index "taggings", ["tagger_id"], name: "index_taggings_on_tagger_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "birthdate"
    t.string   "gender"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_name"], name: "index_users_on_last_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

  add_foreign_key "articles", "genders"
  add_foreign_key "articles", "users"
  add_foreign_key "categories", "genders"
  add_foreign_key "deals", "subcategories"
end
