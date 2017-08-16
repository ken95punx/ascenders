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

ActiveRecord::Schema.define(version: 20170816082614) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "media"
    t.string "image_link"
    t.string "original_link"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "movie_url"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "movie_thum"
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "kana_name"
    t.string "profile_image"
    t.string "cover_image"
    t.datetime "birth_date"
    t.string "place_birth"
    t.string "blood_type"
    t.string "league_school"
    t.string "team"
    t.integer "height"
    t.integer "weight"
    t.string "alma_mater"
    t.string "website"
    t.text "introduction"
    t.string "opponent_next"
    t.datetime "time_next"
    t.string "url_next"
    t.string "opponent_result"
    t.string "result_result"
    t.integer "self_point_result"
    t.integer "enemy_point_result"
    t.string "url_result"
    t.integer "sports_id"
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
