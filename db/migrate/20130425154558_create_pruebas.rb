class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas, :primary_key => :asignatura_id do |t|
      t.integer :asignatura_id
      t.string :tipoprueba
      t.text :criterios
      t.float :ponderacion
      t.text :descripcion

      t.timestamps
    end
  end
end
