class Profesore < ActiveRecord::Base
  attr_accessible :area, :departamento, :horario_tutoria, :lugar_tutoria, :mail, :name, :telefono, :web, :password, :rol
  has_many :profesorPerteneceAsignaturas
  has_many :asignaturas, :through => :profesorPerteneceAsignaturas
end
