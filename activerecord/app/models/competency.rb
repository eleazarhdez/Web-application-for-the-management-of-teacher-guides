class Competency < ActiveRecord::Base
  attr_accessible :descripcion, :name, :tipo
  has_many :competenciaPerteneceAsignatura
  has_many :asignaturas, :through => :competenciaPerteneceAsignatura
end
