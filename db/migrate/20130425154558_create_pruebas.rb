class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.integer :asignatura_id
      t.string :tipoprueba
      t.text :criterios
      t.float :ponderacion
      t.text :descripcion

      t.timestamps
    end

    add_index :pruebas, :asignatura_id
  end
end
