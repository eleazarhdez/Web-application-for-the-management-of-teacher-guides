class CreateProfesores < ActiveRecord::Migration
  def change
    create_table :profesores do |t|
      t.string :name
      t.string :departamento
      t.string :area
      t.string :lugar_tutoria
      t.string :horario_tutoria
      t.integer :telefono
      t.string :mail
      t.string :web

      t.timestamps
    end
  end
end
