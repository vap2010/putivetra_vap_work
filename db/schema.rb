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

ActiveRecord::Schema.define(:version => 20111211194622) do

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

  create_table "events", :force => true do |t|
    t.integer  "skin_id"
    t.boolean  "is_deleted",           :default => false, :null => false
    t.boolean  "is_published",         :default => true,  :null => false
    t.boolean  "is_shown_in_menu",     :default => false, :null => false
    t.boolean  "is_preview_published", :default => false, :null => false
    t.string   "title",                                   :null => false
    t.text     "preview"
    t.text     "body"
    t.datetime "published_at",                            :null => false
    t.datetime "published_until"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_tags", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "keywords"
    t.string   "url"
    t.integer  "metatagable_id",   :null => false
    t.string   "metatagable_type", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meta_tags", ["metatagable_id", "metatagable_type"], :name => "index_meta_tags_on_metatagable_id_and_metatagable_type"

  create_table "project_vacancies", :force => true do |t|
    t.integer  "project_id", :null => false
    t.integer  "vacancy_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_vacancies", ["project_id"], :name => "index_project_vacancies_on_project_id"
  add_index "project_vacancies", ["vacancy_id"], :name => "index_project_vacancies_on_vacancy_id"

  create_table "projects", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vacancies", :force => true do |t|
    t.integer  "skin_id"
    t.integer  "position",             :default => 1,     :null => false
    t.boolean  "is_deleted",           :default => false, :null => false
    t.boolean  "is_published",         :default => true,  :null => false
    t.boolean  "is_shown_in_menu",     :default => false, :null => false
    t.boolean  "is_preview_published", :default => false, :null => false
    t.string   "title",                                   :null => false
    t.text     "preview"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
