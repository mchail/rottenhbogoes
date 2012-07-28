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

ActiveRecord::Schema.define(:version => 20120728083618) do

  create_table "movies", :force => true do |t|
    t.integer  "hbogo_id"
    t.integer  "imdb_id"
    t.text     "title"
    t.text     "description"
    t.date     "expiration"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "rating"
    t.date     "introduced"
    t.integer  "runtime"
    t.text     "quality"
    t.integer  "year"
    t.text     "genre"
    t.text     "image_url"
    t.text     "link"
  end

  create_table "rt_movies", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "rating"
    t.integer  "runtime"
    t.integer  "year"
    t.integer  "rtid"
    t.text     "review"
    t.integer  "critics_rating"
    t.integer  "audience_rating"
    t.text     "image_url"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "movie_id"
  end

end
