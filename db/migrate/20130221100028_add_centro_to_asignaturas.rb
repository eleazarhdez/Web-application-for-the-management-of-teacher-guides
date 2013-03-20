class AddCentroToAsignaturas < ActiveRecord::Migration
  def change
    add_column :asignaturas, :centro, :string
  end
end
