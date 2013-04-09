require 'composite_primary_keys'
class Evaluation < ActiveRecord::Base
  self.primary_keys = :asignatura_id, :tipoprueba
  attr_accessible :asignatura_id, :criterios, :descripcion, :ponderacion, :tipoprueba, :competenciaevaluacion_tokens,
  :updated_at, :created_at
  attr_reader :competenciaevaluacion_tokens
  #has_and_belongs_to_many :asignaturas #, :foreign_key => [:asignatura_id]
 # has_many :evaluationPerteneceAsignaturas
  #has_many :asignaturas, :through => :evaluationPerteneceAsignaturas
   belongs_to :asignatura
  has_many :competencyPerteneceEvaluations
  has_many :competencies, :through => :competencyPerteneceEvaluations

  def competenciaevaluacion_tokens=(ids)  
    self.competency_ids = ids.split(",") 
  end
  
end