class CreateProfesorPerteneceAsignaturas < ActiveRecord::Migration
  def change
    create_table :profesor_pertenece_asignaturas do |t|
      t.integer :asignatura_id
      t.integer :profesore_id
      t.string :rol

      t.timestamps
    end
  end
end

