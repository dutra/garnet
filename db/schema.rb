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

ActiveRecord::Schema.define(:version => 20131214001618) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.integer  "event_id"
    t.date     "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "carousels", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "album_id"
    t.integer  "event_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "date"
    t.integer  "termb_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "exif_infos", :force => true do |t|
    t.integer  "photo_id"
    t.string   "camera"
    t.string   "shutter_speed"
    t.integer  "aperture"
    t.string   "focal_length"
    t.integer  "iso"
    t.datetime "taken"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "year"
    t.string   "email"
    t.string   "course"
    t.string   "origin"
    t.string   "measurements"
    t.string   "turnons"
    t.string   "turnoffs"
    t.string   "fav_activities"
    t.string   "guilty_pleasures"
    t.string   "ambitions"
    t.string   "books"
    t.string   "movies"
    t.string   "sports"
    t.string   "pets"
    t.string   "foods"
    t.string   "sexiest_city"
    t.string   "morning"
    t.string   "date_idea"
    t.string   "people_admire"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "members_terms", :force => true do |t|
    t.integer "member_id"
    t.integer "term_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "file"
    t.integer  "album_id"
    t.integer  "album_cover_id"
    t.string   "title"
    t.string   "description"
    t.boolean  "carousel"
    t.string   "carousel_title"
    t.string   "carousel_description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "terms", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
