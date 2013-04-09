require 'composite_primary_keys'
class EvaluationPerteneceAsignatura < ActiveRecord::Base
  self.primary_keys = :asignatura_id, :evaluation_id
  attr_accessible :asignatura_id, :tipoprueba
  belongs_to :asignatura
  belongs_to :evaluation
end
