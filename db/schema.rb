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

ActiveRecord::Schema.define(version: 20190813130328) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                    null: false
    t.string   "image",                    null: false
    t.text     "text",       limit: 65535, null: false
    t.integer  "artist_id",                null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["artist_id"], name: "index_articles_on_artist_id", using: :btree
  end

  create_table "artists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                     null: false
    t.string   "image"
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["name"], name: "index_artists_on_name", using: :btree
  end

  create_table "follow_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "artist_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_follow_users_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_follow_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.boolean  "admin_flg"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      null: false
    t.string   "videoID",    null: false
    t.integer  "artist_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_videos_on_artist_id", using: :btree
  end

  add_foreign_key "articles", "artists"
  add_foreign_key "follow_users", "artists"
  add_foreign_key "follow_users", "users"
  add_foreign_key "videos", "artists"
end
