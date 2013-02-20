class CreateCompetencyPerteneceAsignaturas < ActiveRecord::Migration
  def change
    create_table :competency_pertenece_asignaturas do |t|
      t.integer :asignatura_id
      t.integer :competency_id

      t.timestamps
    end
  end
end
