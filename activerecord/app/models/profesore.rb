class Profesore < ActiveRecord::Base
  attr_accessible :area, :departamento, :horario_tutoria, :lugar_tutoria, :mail, :name, :telefono, :web
  has_many :profesorPerteneceAsignatura
  has_many :asignaturas, :through => :profesorPerteneceAsignatura
end
