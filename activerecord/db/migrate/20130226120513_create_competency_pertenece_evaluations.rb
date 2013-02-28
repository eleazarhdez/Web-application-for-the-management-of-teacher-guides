class CreateCompetencyPerteneceEvaluations < ActiveRecord::Migration
  def change
    create_table :competency_pertenece_evaluations do |t|
      t.integer :evaluation_id
      t.integer :competency_id

      t.timestamps
    end
  end
end
