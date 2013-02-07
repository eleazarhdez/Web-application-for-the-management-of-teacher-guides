class Asignatura < ActiveRecord::Base
  attr_accessible :area, :bibliografia, :bloque, :caracter, :codigo, :creditos, :curso, :departamento, :duracion, :horario, :idioma, 
  :itinerario, :nombre, :perfil, :rama, :resultados, :titulacion, :web, :profesor_tokens
  
  has_many :profesorPerteneceAsignaturas 
  has_many :profesores, :through => :profesorPerteneceAsignaturas 
  attr_reader :profesor_tokens 
  
  def profesor_tokens=(ids)  
    #self.class.instance_methods(false).inspect
   puts "++++++++++++++++++++++++++++++++++++++#{ids.inspect}++++++++++++++++++++++++++++++++++++++++++++++++++"
  puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
    self.profesore_ids = ids.split(",")
    puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
  end
  
end
