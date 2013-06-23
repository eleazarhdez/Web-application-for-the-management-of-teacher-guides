class Profesore < ActiveRecord::Base


  attr_accessible :area, :departamento, :horario_tutoria, :lugar_tutoria, :mail, :name, :telefono, :web, :password, :rol
  has_many :profesorPerteneceAsignaturas
  has_many :asignaturas, :through => :profesorPerteneceAsignaturas

  validates :name, :presence => { :message => "Nombre requerido" }
  validates :rol, :presence => { :message => "Rol requerido" }
  validates :password, :presence => { :message => "Contraseña requerida" }
  #validates :mail, :presence => false, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message=> "Formato inválido"}

end
