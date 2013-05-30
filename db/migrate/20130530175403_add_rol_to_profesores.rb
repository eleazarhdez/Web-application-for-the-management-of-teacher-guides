class AddRolToProfesores < ActiveRecord::Migration
  def change
    add_column :profesores, :rol, :string
  end
end
