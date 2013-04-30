class CompetencyPertenecePrueba < ActiveRecord::Base
  attr_accessible :competency_id, :prueba_id
  belongs_to :prueba
  belongs_to :competency
end
