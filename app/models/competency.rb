class Competency < ActiveRecord::Base
  attr_accessible :descripcion, :name, :tipo
  has_many :competencyPerteneceAsignaturas
  has_many :asignaturas, :through => :competencyPerteneceAsignaturas
  
  has_many :competencyPerteneceEvaluations
  has_many :evaluations, :through => :competencyPerteneceEvaluations

  has_many :competencyPertenecePruebas
  has_many :pruebas, :through => :competencyPertenecePruebas

  validates :name, :presence => { :message => "Nombre requerido" }
  validates :tipo, :presence => { :message => "Nombre requerido" }

end
