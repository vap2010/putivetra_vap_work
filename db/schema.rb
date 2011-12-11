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

ActiveRecord::Schema.define(:version => 20111211181243) do

  create_table "articles", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "skin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id",                                :null => false
    t.integer  "position",               :default => 1,     :null => false
    t.boolean  "is_deleted",             :default => false, :null => false
    t.boolean  "is_published",           :default => true,  :null => false
    t.boolean  "are_children_published", :default => true,  :null => false
    t.boolean  "is_shown_in_menu",       :default => false, :null => false
    t.boolean  "is_preview_published",   :default => false, :null => false
  end

  add_index "articles", ["parent_id"], :name => "index_articles_on_parent_id"
  add_index "articles", ["project_id"], :name => "index_articles_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
