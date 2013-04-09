class CreateEvaluationPerteneceAsignaturas < ActiveRecord::Migration
  def change
    create_table :evaluation_pertenece_asignaturas do |t|
      t.integer :asignatura_id
      t.integer :tipoprueba

      t.timestamps
    end
  end
end
