require 'composite_primary_keys'
class Evaluation < ActiveRecord::Base
  self.primary_keys = :asignatura_id, :tipoprueba
  attr_accessible :asignatura_id, :criterios, :descripcion, :ponderacion, :tipoprueba
  belongs_to :asignatura
  
end
