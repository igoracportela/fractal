# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
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

ActiveRecord::Schema.define(:version => 20121227165504) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "phone"
    t.boolean  "super_admin"
    t.boolean  "contributor"
    t.string   "slug"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "alternative_translations", :force => true do |t|
    t.integer  "alternative_id"
    t.string   "locale"
    t.string   "title",          :default => "", :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "alternative_translations", ["alternative_id"], :name => "index_alternative_translations_on_alternative_id"
  add_index "alternative_translations", ["locale"], :name => "index_alternative_translations_on_locale"

  create_table "alternative_votes", :force => true do |t|
    t.integer  "alternative_id"
    t.integer  "vote_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "alternative_votes", ["alternative_id"], :name => "index_alternative_votes_on_alternative_id"
  add_index "alternative_votes", ["vote_id"], :name => "index_alternative_votes_on_vote_id"

  create_table "alternatives", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.integer  "count_votes", :default => 0
    t.integer  "poll_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "alternatives", ["poll_id"], :name => "index_alternatives_on_poll_id"

  create_table "categories", :force => true do |t|
    t.string   "title",         :default => "", :null => false
    t.integer  "categorizable",                 :null => false
    t.string   "slug",          :default => "", :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "categories", ["categorizable"], :name => "index_categories_on_categorizable"
  add_index "categories", ["slug"], :name => "index_categories_on_slug", :unique => true

  create_table "categories_clients", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "client_id"
  end

  add_index "categories_clients", ["category_id", "client_id"], :name => "index_categories_clients_on_category_id_and_client_id", :unique => true

  create_table "categories_documents", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "document_id"
  end

  add_index "categories_documents", ["category_id", "document_id"], :name => "index_categories_documents_on_category_id_and_document_id", :unique => true

  create_table "categories_employees", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "employee_id"
  end

  add_index "categories_employees", ["category_id", "employee_id"], :name => "index_categories_employees_on_category_id_and_employee_id", :unique => true

  create_table "categories_events", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "event_id"
  end

  add_index "categories_events", ["category_id", "event_id"], :name => "index_categories_events_on_category_id_and_event_id", :unique => true

  create_table "categories_news", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "new_id"
  end

  add_index "categories_news", ["category_id", "new_id"], :name => "index_categories_news_on_category_id_and_new_id", :unique => true

  create_table "categories_polls", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "poll_id"
  end

  add_index "categories_polls", ["category_id", "poll_id"], :name => "index_categories_polls_on_category_id_and_poll_id", :unique => true

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  add_index "categories_products", ["category_id", "product_id"], :name => "index_categories_products_on_category_id_and_product_id", :unique => true

  create_table "categories_projects", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "categories_services", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "service_id"
  end

  add_index "categories_services", ["category_id", "service_id"], :name => "index_categories_services_on_category_id_and_service_id", :unique => true

  create_table "category_translations", :force => true do |t|
    t.integer  "category_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "category_translations", ["category_id"], :name => "index_category_translations_on_category_id"
  add_index "category_translations", ["locale"], :name => "index_category_translations_on_locale"

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "client_translations", :force => true do |t|
    t.integer  "client_id"
    t.string   "locale"
    t.string   "name",        :default => "", :null => false
    t.text     "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "client_translations", ["client_id"], :name => "index_client_translations_on_client_id"
  add_index "client_translations", ["locale"], :name => "index_client_translations_on_locale"

  create_table "clients", :force => true do |t|
    t.string   "name",        :default => "", :null => false
    t.text     "description"
    t.string   "image"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "configurations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "document_translations", :force => true do |t|
    t.integer  "document_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "document_translations", ["document_id"], :name => "index_document_translations_on_document_id"
  add_index "document_translations", ["locale"], :name => "index_document_translations_on_locale"

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "archive"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "documents", ["slug"], :name => "index_documents_on_slug", :unique => true

  create_table "employee_translations", :force => true do |t|
    t.integer  "employee_id"
    t.string   "locale"
    t.string   "name",        :default => "", :null => false
    t.string   "post"
    t.text     "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "employee_translations", ["employee_id"], :name => "index_employee_translations_on_employee_id"
  add_index "employee_translations", ["locale"], :name => "index_employee_translations_on_locale"

  create_table "employees", :force => true do |t|
    t.string   "name",        :default => "", :null => false
    t.string   "post"
    t.text     "description"
    t.string   "image"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "employees", ["slug"], :name => "index_employees_on_slug", :unique => true

  create_table "events", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "image"
    t.datetime "date",                        :null => false
    t.datetime "schedule",                    :null => false
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "events", ["slug"], :name => "index_events_on_slug", :unique => true

  create_table "galleries", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "galleries", ["slug"], :name => "index_galleries_on_slug", :unique => true

  create_table "gallery_translations", :force => true do |t|
    t.integer  "gallery_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "gallery_translations", ["gallery_id"], :name => "index_gallery_translations_on_gallery_id"
  add_index "gallery_translations", ["locale"], :name => "index_gallery_translations_on_locale"

  create_table "link_translations", :force => true do |t|
    t.integer  "link_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "url",         :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "link_translations", ["link_id"], :name => "index_link_translations_on_link_id"
  add_index "link_translations", ["locale"], :name => "index_link_translations_on_locale"

  create_table "links", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "url",         :default => "", :null => false
    t.string   "image"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "links", ["slug"], :name => "index_links_on_slug", :unique => true

  create_table "news", :force => true do |t|
    t.string   "title",      :default => "", :null => false
    t.text     "content",    :default => "", :null => false
    t.string   "image"
    t.string   "slug",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "news", ["slug"], :name => "index_news_on_slug", :unique => true

  create_table "news_translations", :force => true do |t|
    t.integer  "news_id"
    t.string   "locale"
    t.string   "title",      :default => "", :null => false
    t.text     "content",    :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "news_translations", ["locale"], :name => "index_news_translations_on_locale"
  add_index "news_translations", ["news_id"], :name => "index_news_translations_on_news_id"

  create_table "page_translations", :force => true do |t|
    t.integer  "page_id"
    t.string   "locale"
    t.string   "title",      :default => "", :null => false
    t.text     "content",    :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "page_translations", ["locale"], :name => "index_page_translations_on_locale"
  add_index "page_translations", ["page_id"], :name => "index_page_translations_on_page_id"

  create_table "pages", :force => true do |t|
    t.string   "title",      :default => "", :null => false
    t.text     "content",    :default => "", :null => false
    t.string   "slug",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "photo_translations", :force => true do |t|
    t.integer  "photo_id"
    t.string   "locale"
    t.string   "description", :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "photo_translations", ["locale"], :name => "index_photo_translations_on_locale"
  add_index "photo_translations", ["photo_id"], :name => "index_photo_translations_on_photo_id"

  create_table "photos", :force => true do |t|
    t.string   "description"
    t.string   "image"
    t.string   "slug"
    t.integer  "gallery_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "photos", ["gallery_id"], :name => "index_photos_on_gallery_id"
  add_index "photos", ["slug"], :name => "index_photos_on_slug", :unique => true

  create_table "poll_translations", :force => true do |t|
    t.integer  "poll_id"
    t.string   "locale"
    t.string   "question",   :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "poll_translations", ["locale"], :name => "index_poll_translations_on_locale"
  add_index "poll_translations", ["poll_id"], :name => "index_poll_translations_on_poll_id"

  create_table "polls", :force => true do |t|
    t.string   "question",        :default => "",    :null => false
    t.datetime "validity"
    t.boolean  "multiple_choice", :default => false
    t.string   "slug",            :default => "",    :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "polls", ["slug"], :name => "index_polls_on_slug", :unique => true

  create_table "product_translations", :force => true do |t|
    t.integer  "product_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "product_translations", ["locale"], :name => "index_product_translations_on_locale"
  add_index "product_translations", ["product_id"], :name => "index_product_translations_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "image"
    t.decimal  "price"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "products", ["slug"], :name => "index_products_on_slug", :unique => true

  create_table "project_translations", :force => true do |t|
    t.integer  "project_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "site"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "project_translations", ["locale"], :name => "index_project_translations_on_locale"
  add_index "project_translations", ["project_id"], :name => "index_project_translations_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "image"
    t.string   "site"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

  create_table "service_translations", :force => true do |t|
    t.integer  "service_id"
    t.string   "locale"
    t.string   "title",                :default => "", :null => false
    t.text     "description"
    t.string   "detailed_description"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "service_translations", ["locale"], :name => "index_service_translations_on_locale"
  add_index "service_translations", ["service_id"], :name => "index_service_translations_on_service_id"

  create_table "services", :force => true do |t|
    t.string   "title",                :default => "", :null => false
    t.text     "descritpion"
    t.text     "detailed_description"
    t.string   "image"
    t.string   "slug",                 :default => "", :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "services", ["slug"], :name => "index_services_on_slug", :unique => true

  create_table "subscribers", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.string   "email",      :default => "", :null => false
    t.string   "phone"
    t.string   "slug",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "subscribers", ["email"], :name => "index_subscribers_on_email", :unique => true
  add_index "subscribers", ["slug"], :name => "index_subscribers_on_slug", :unique => true

  create_table "testimonials", :force => true do |t|
    t.string   "name",        :default => "", :null => false
    t.text     "description", :default => "", :null => false
    t.string   "site"
    t.string   "image"
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "testimonials", ["slug"], :name => "index_testimonials_on_slug", :unique => true

  create_table "video_translations", :force => true do |t|
    t.integer  "video_id"
    t.string   "locale"
    t.string   "title",       :default => "", :null => false
    t.string   "description", :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "video_translations", ["locale"], :name => "index_video_translations_on_locale"
  add_index "video_translations", ["video_id"], :name => "index_video_translations_on_video_id"

  create_table "videos", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description"
    t.string   "url",         :default => "", :null => false
    t.string   "slug",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "videos", ["slug"], :name => "index_videos_on_slug", :unique => true

  create_table "votes", :force => true do |t|
    t.integer  "count_alternatives"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
