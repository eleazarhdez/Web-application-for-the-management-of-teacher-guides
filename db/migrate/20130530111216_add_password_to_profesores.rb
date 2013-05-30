class AddPasswordToProfesores < ActiveRecord::Migration
  def up
    add_column :profesores, :password, :string
  end

  def down
    remove_column :profesores, :password, :string
  end
end
