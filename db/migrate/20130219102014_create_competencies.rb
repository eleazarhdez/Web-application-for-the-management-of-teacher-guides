class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :name
      t.text :descripcion

      t.timestamps
    end
  end
end
