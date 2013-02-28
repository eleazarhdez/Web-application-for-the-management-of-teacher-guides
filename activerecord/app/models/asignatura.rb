  class Asignatura < ActiveRecord::Base
  attr_accessible :area, :bibliografia, :bloque, :caracter, :centro, :codigo, :creditos, :curso, :departamento, :duracion, :horario, :idioma, 
  :itinerario, :nombre, :plan, :perfil, :rama, :resultados, :titulacion, :web, :profesor_tokens, :competencia_tokens
  
  has_many :profesorPerteneceAsignaturas 
  has_many :profesores, :through => :profesorPerteneceAsignaturas
  has_many :competencyPerteneceAsignaturas
  has_many :competencies, :through => :competencyPerteneceAsignaturas
  
  has_many :evaluations #con claves dobles (tipoprueba, asignatura)
  accepts_nested_attributes_for :evaluations, :allow_destroy => true
  
  attr_reader :profesor_tokens, :competencia_tokens 
  attr_writer :current_step 

  #validates_presence_of :codigo, :if => lambda { |o| o.current_step == "codigo" }
  #validates_presence_of :nombre, :if => lambda { |o| o.current_step == "nombre" }
  
  def profesor_tokens=(ids)  
    #self.class.instance_methods(false).inspect
   puts "++++++++++++++++++++++++++++++++++++++#{ids.inspect}++++++++++++++++++++++++++++++++++++++++++++++++++"
  puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
    self.profesore_ids = ids.split(",")
    puts "+++++++++++++++++++++++++++++++++++#{self.profesores.inspect}+++++++++++++++++++++++++++++++++++++++++"
  end
  
    def competencia_tokens=(ids)  
      self.competency_ids = ids.split(",")
    end

    def current_step  
      @current_step || steps.first  
    end  
    
    def steps  
      %w[descripcion profesorado contextualizacion competencias bibliografia evaluacion resultados]  
    end

    def next_step  
      self.current_step = steps[steps.index(current_step)+1]  
    end 

    def previous_step  
      self.current_step = steps[steps.index(current_step)-1]  
    end

    def first_step?  
      current_step == steps.first  
    end 

    def last_step?  
      current_step == steps.last  
    end  

end
