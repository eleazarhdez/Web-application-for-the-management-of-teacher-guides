class ProfesorPerteneceAsignatura < ActiveRecord::Base
  attr_accessible :asignatura_id, :profesore_id, :rol
  belongs_to :asignatura
  belongs_to :profesore

  before_save :default_values
  def default_values
    self.rol ||= 'Profesor'
  end

  #def default_values
   # self.codigo ||= Asignatura.codigo
  #end
end

#el atributo asignatura_id y profesore_id cogen el id por defecto de las tablas asignatura y profesor, en el caso de la tabla
#asignatura, el id es código, en el resto de tablas es id a secas.
