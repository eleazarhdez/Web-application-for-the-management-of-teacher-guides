class Profesore < ActiveRecord::Base


  attr_accessible :area, :departamento, :horario_tutoria, :lugar_tutoria, :mail, :name, :telefono, :web, :password, :rol
  has_many :profesorPerteneceAsignaturas
  has_many :asignaturas, :through => :profesorPerteneceAsignaturas

  validates_presence_of :name, :rol, :password, { :message => ": El campo no puede ser vacío" }
  validates :mail, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message=> "Formato inválido"}

end
