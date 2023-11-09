# frozen_string_literal: true

require_relative "recursos_educativos/version"
require_relative "recursos_educativos/actividad"
require_relative "recursos_educativos/dificultad"

module RecursosEducativos
  class Error < StandardError; end

  Actividad = Actividad.new(1, 'Marca', 'Titulo','Descripcion', :beginner, 'Tipo', 'Categoria', 'Material', 45, 'Conceptos')
  puts Actividad.duracion_estimada
end
