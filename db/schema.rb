# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_07_204718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "audiences", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "user_count"
    t.bigint "template_id"
    t.index ["template_id"], name: "index_audiences_on_template_id"
  end

  create_table "discord_users", primary_key: "uid", id: :bigint, default: nil, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "discriminator"
  end

  create_table "expeditions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
  end

  create_table "guild_comments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "content"
    t.datetime "date"
    t.bigint "guild_id"
    t.index ["guild_id"], name: "index_guild_comments_on_guild_id"
    t.index ["user_id"], name: "index_guild_comments_on_user_id"
  end

  create_table "guild_tactics", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.datetime "date"
    t.string "title"
    t.bigint "guild_id"
    t.index ["guild_id"], name: "index_guild_tactics_on_guild_id"
    t.index ["user_id"], name: "index_guild_tactics_on_user_id"
  end

  create_table "guild_users", primary_key: "uid", id: :bigint, default: nil, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "join_at"
    t.bigint "guild_id"
    t.bigint "discord_user_id"
    t.index ["discord_user_id"], name: "index_guild_users_on_discord_user_id"
    t.index ["guild_id"], name: "index_guild_users_on_guild_id"
  end

  create_table "guilds", primary_key: "uid", id: :bigint, default: nil, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_guilds_on_user_id"
  end

  create_table "nft_holders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_count"
    t.datetime "date"
    t.bigint "template_id"
    t.integer "discord_members"
    t.index ["template_id"], name: "index_nft_holders_on_template_id"
  end

  create_table "onboardings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "batch_number"
    t.datetime "deadline"
  end

  create_table "sections", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "template_comments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "content"
    t.bigint "template_id"
    t.index ["template_id"], name: "index_template_comments_on_template_id"
    t.index ["user_id"], name: "index_template_comments_on_user_id"
  end

  create_table "template_tactics", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "title"
    t.bigint "template_id"
    t.index ["template_id"], name: "index_template_tactics_on_template_id"
    t.index ["user_id"], name: "index_template_tactics_on_user_id"
  end

  create_table "templates", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "description"
    t.bigint "user_id"
    t.string "category"
    t.text "url"
    t.string "twitter_link"
    t.string "discord_link"
    t.string "website_link"
    t.text "paragraph"
    t.string "industry"
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "token_holders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_count"
    t.datetime "date"
    t.bigint "template_id"
    t.integer "discord_members"
    t.index ["template_id"], name: "index_token_holders_on_template_id"
  end

  create_table "twitter_followers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_count"
    t.datetime "date"
    t.bigint "template_id"
    t.index ["template_id"], name: "index_twitter_followers_on_template_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "pseudo"
    t.string "provider"
    t.string "uid"
    t.boolean "accepted", default: false
    t.boolean "lion", default: false
    t.integer "xp"
    t.string "job_title"
    t.boolean "onboarded", default: false
    t.boolean "demo", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
