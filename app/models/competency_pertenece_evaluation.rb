require 'composite_primary_keys'
class CompetencyPerteneceEvaluation < ActiveRecord::Base
	self.primary_keys = :evaluation_id, :competency_id
  	attr_accessible :competency_id, :evaluation_id
  	belongs_to :evaluation
    belongs_to :competency
end
