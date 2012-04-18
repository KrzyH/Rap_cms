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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120416185606) do

  create_table "clips", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.string   "music"
    t.string   "production"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "poster"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.string   "introduction"
    t.string   "content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "productions", :force => true do |t|
    t.string   "artis"
    t.string   "album"
    t.datetime "year"
    t.string   "cover"
    t.string   "tracklist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "settings", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "google_analytics"
    t.string   "google_verification"
    t.string   "email"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                        :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "lastlogin"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.boolean  "admin",                        :default => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
