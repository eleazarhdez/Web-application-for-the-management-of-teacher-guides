class CreateCompetencyPertenecePruebas < ActiveRecord::Migration
  def change
    create_table :competency_pertenece_pruebas do |t|
      t.integer :competency_id
      t.integer :prueba_id

      t.timestamps
    end
  end
end
