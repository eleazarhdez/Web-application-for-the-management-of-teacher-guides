class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :tipoprueba
      t.integer :asignatura_id
      t.text :criterios
      t.float :ponderacion
      t.text :descripcion

      t.timestamps
    end
  end
end
