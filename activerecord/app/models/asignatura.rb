class Asignatura < ActiveRecord::Base
  attr_accessible :area, :bibliografia, :bloque, :caracter, :codigo, :creditos, :curso, :departamento, :duracion, :horario, :idioma, :itinerario, :nombre, :perfil, :rama, :resultados, :titulacion, :web
end
