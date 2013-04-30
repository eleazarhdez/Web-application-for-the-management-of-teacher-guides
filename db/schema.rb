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

ActiveRecord::Schema.define(:version => 20130425154558) do

  create_table "asignaturas", :primary_key => "codigo", :force => true do |t|
    t.string   "nombre"
    t.string   "titulacion"
    t.string   "rama"
    t.string   "itinerario"
    t.string   "departamento"
    t.string   "area"
    t.integer  "curso"
    t.string   "caracter"
    t.string   "duracion"
    t.integer  "creditos"
    t.string   "horario"
    t.string   "web"
    t.string   "idioma"
    t.string   "bloque"
    t.string   "perfil"
    t.text     "bibliografia"
    t.text     "resultados"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "centro"
    t.string   "plan"
  end

  create_table "competencies", :force => true do |t|
    t.string   "name"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "tipo"
  end

  create_table "competency_pertenece_asignaturas", :force => true do |t|
    t.integer  "asignatura_id"
    t.integer  "competency_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "competency_pertenece_evaluations", :force => true do |t|
    t.integer  "evaluation_id"
    t.integer  "competency_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "evaluation_pertenece_asignaturas", :force => true do |t|
    t.integer  "asignatura_id"
    t.integer  "tipoprueba"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "evaluations", :force => true do |t|
    t.string   "tipoprueba"
    t.integer  "asignatura_id"
    t.text     "criterios"
    t.float    "ponderacion"
    t.text     "descripcion"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "profesor_pertenece_asignaturas", :force => true do |t|
    t.integer  "asignatura_id"
    t.integer  "profesore_id"
    t.string   "rol"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "profesores", :force => true do |t|
    t.string   "name"
    t.string   "departamento"
    t.string   "area"
    t.string   "lugar_tutoria"
    t.string   "horario_tutoria"
    t.integer  "telefono"
    t.string   "mail"
    t.string   "web"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pruebas", :force => true do |t|
    t.integer  "asignatura_id"
    t.string   "tipoprueba"
    t.text     "criterios"
    t.float    "ponderacion"
    t.text     "descripcion"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
