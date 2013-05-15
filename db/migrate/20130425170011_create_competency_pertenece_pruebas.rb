class CreateCompetencyPertenecePruebas < ActiveRecord::Migration
  def change
    create_table :competency_pertenece_pruebas do |t|
      t.integer :asignatura_id
      t.integer :competency_id
      t.integer :prueba_id

      t.timestamps
    end

    add_index :competency_pertenece_pruebas, :asignatura_id
  end
end
