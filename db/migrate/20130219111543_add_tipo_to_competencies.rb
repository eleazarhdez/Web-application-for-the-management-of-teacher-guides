class AddTipoToCompetencies < ActiveRecord::Migration
  def change
    add_column :competencies, :tipo, :string
  end
end
