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

# rubocop:disable Style
ActiveRecord::Schema[7.0].define(version: 2022_06_16_195601) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "repositories", force: :cascade do |t|
    t.string "repository_id"
    t.string "name"
    t.string "full_name"
    t.string "avatar_url"
    t.string "html_url"
    t.text "description"
    t.string "current_tag"
    t.json "languages"
    t.datetime "created"
    t.datetime "pushed"
    t.string "homepage"
    t.string "stargazers_count"
    t.string "watchers_count"
    t.string "language"
    t.string "license"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  # rubocop:enable Style
end
