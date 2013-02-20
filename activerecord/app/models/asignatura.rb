class Asignatura < ActiveRecord::Base
  attr_accessible :area, :bibliografia, :bloque, :caracter, :codigo, :creditos, :curso, :departamento, :duracion, :horario, :idioma, 
  :itinerario, :nombre, :perfil, :rama, :resultados, :titulacion, :web, :profesor_tokens, :competencia_tokens
  
  has_many :profesorPerteneceAsignaturas 
  has_many :profesores, :through => :profesorPerteneceAsignaturas
  has_many :competencyPerteneceAsignaturas
  has_many :competencies, :through => :competencyPerteneceAsignaturas
  attr_reader :profesor_tokens, :competencia_tokens 
  
  def profesor_tokens=(ids)  
    #self.class.instance_methods(false).inspect
   puts "++++++++++++++++++++++++++++++++++++++#{ids.inspect}++++++++++++++++++++++++++++++++++++++++++++++++++"
  puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
    self.profesore_ids = ids.split(",")
    puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
  end
  
    def competencia_tokens=(ids)  
    #self.class.instance_methods(false).inspect
   puts "++++++++++++++++++++++++++++++++++++++#{ids.inspect}++++++++++++++++++++++++++++++++++++++++++++++++++"
  puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
    self.competency_ids = ids.split(",")
    puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
  end
  
end
