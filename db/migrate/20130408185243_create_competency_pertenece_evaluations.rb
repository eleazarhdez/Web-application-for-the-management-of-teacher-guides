class CreateCompetencyPerteneceEvaluations < ActiveRecord::Migration
  def change
    create_table :competency_pertenece_evaluations, {:id => false} do |t|
      t.integer :evaluation_id
      t.integer :competency_id

      t.timestamps
    end
   # execute <<-SQL
    #  ALTER TABLE competency_pertenece_evaluations
    #    PRIMARY KEY (:evaluation_id,:compentency_id)
    #SQL
  end


end
