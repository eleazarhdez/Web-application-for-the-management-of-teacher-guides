class CompetencyPertenecePrueba < ActiveRecord::Base
  attr_accessible :asignatura_id, :competency_id, :prueba_id               #asignatura_id es probando
  belongs_to :prueba
  belongs_to :competency
  belongs_to :asignatura   #nuevo
end
