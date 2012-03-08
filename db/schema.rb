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

ActiveRecord::Schema.define(:version => 20120308111735) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "albumable_id"
    t.string   "albumable_type"
    t.integer  "category_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "navlabel"
    t.integer  "parent_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "position"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.text     "comment"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metatags", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "keywords"
    t.integer  "metatagable_id"
    t.string   "metatagable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "navlabel"
    t.string   "name"
    t.boolean  "published"
    t.text     "body"
    t.string   "image"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "twitter"
    t.text     "bio"
    t.string   "industry"
    t.integer  "position"
    t.datetime "parnter_since"
    t.string   "logo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "category_id"
    t.text     "body"
    t.boolean  "published"
    t.datetime "published_on"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.text     "description"
    t.string   "tagline"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "twitter"
    t.text     "bio"
    t.string   "role"
    t.integer  "position"
    t.datetime "started_on"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

  create_table "uploads", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.text     "description"
    t.string   "image"
    t.integer  "album_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
