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

ActiveRecord::Schema.define(version: 20140220170531) do

  create_table "generators", force: true do |t|
    t.string   "name"
    t.string   "tagline"
    t.string   "sub_tagline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "bg_image_file_name"
    t.string   "bg_image_content_type"
    t.integer  "bg_image_file_size"
    t.datetime "bg_image_updated_at"
  end

  create_table "lorem_ipsums", force: true do |t|
    t.text     "content"
    t.integer  "generator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "approved",     default: "f"
  end

  add_index "lorem_ipsums", ["generator_id"], name: "index_lorem_ipsums_on_generator_id"

  create_table "submitted_ipsums", force: true do |t|
    t.text     "content"
    t.integer  "generator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submitted_ipsums", ["generator_id"], name: "index_submitted_ipsums_on_generator_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
