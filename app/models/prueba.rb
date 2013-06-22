class Prueba < ActiveRecord::Base
  attr_accessible :asignatura_id, :tipoprueba, :criterios, :ponderacion, :descripcion , :prueba_tokens
  belongs_to :asignatura

  has_many :competencyPertenecePruebas,  :dependent => :destroy
  has_many :competencies, :through => :competencyPertenecePruebas
  attr_reader :prueba_tokens

  def prueba_tokens=(ids)
    self.competency_ids = ids.split(",")
  end

end
