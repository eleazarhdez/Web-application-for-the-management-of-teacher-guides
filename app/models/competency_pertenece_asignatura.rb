#require 'composite_primary_keys'
class CompetencyPerteneceAsignatura < ActiveRecord::Base
  #self.primary_keys = :asignatura_id, :competency_id
  attr_accessible :asignatura_id, :competency_id
  belongs_to :asignatura
  belongs_to :competency
end
