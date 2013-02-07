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
