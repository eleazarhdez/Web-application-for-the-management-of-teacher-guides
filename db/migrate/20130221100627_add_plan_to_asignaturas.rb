class AddPlanToAsignaturas < ActiveRecord::Migration
  def change
    add_column :asignaturas, :plan, :string
  end
end
