# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101123140017) do

  create_table "libros", :force => true do |t|
    t.string   "titulo"
    t.string   "autor"
    t.string   "editorial"
    t.string   "edicion"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "front_file_name"
    t.string   "front_content_type"
    t.integer  "front_file_size"
    t.datetime "front_updated_at"
  end

  create_table "oas", :force => true do |t|
    t.string   "titulo"
    t.string   "idioma"
    t.text     "descripcion"
    t.string   "palabras_clave"
    t.string   "ambito"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
    t.string   "Tipodeinteracctividad"
    t.string   "Tipoderecurso"
    t.string   "Nivelinteractividad"
    t.string   "Densidadsemantica"
    t.string   "Destinatario"
    t.string   "Contexto"
    t.string   "Rangotipicoedad"
    t.string   "Dificultad"
    t.string   "tiempodeaprendizaje"
    t.integer  "id_oa"
  end

  create_table "paginas", :force => true do |t|
    t.integer  "libro_id"
    t.string   "nropagina"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.datetime "media_updated_at"
  end

  create_table "tecnicas", :force => true do |t|
    t.integer  "oa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unitarios", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mediau_file_name"
    t.string   "mediau_content_type"
    t.integer  "mediau_file_size"
    t.datetime "mediau_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "role"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombreapellido"
    t.string   "pais"
    t.string   "ciudad"
    t.string   "idioma"
    t.string   "sexo"
    t.date     "fechanacimiento"
    t.string   "cargo"
    t.string   "skype"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

end
