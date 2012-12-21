class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas, :primary_key => :codigo do |t|  
      t.string :nombre
      t.string :titulacion
      t.string :rama
      t.string :itinerario
      t.string :departamento
      t.string :area
      t.integer :curso
      t.string :caracter
      t.string :duracion
      t.integer :creditos
      t.string :horario
      t.string :web
      t.string :idioma
      t.string :bloque
      t.string :perfil
      t.text :bibliografia
      t.text :resultados

      t.timestamps
    end
  end
end
