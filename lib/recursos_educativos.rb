# frozen_string_literal: true

require_relative "recursos_educativos/version"
require_relative "recursos_educativos/actividad"
require_relative "recursos_educativos/dificultad"

module RecursosEducativos
  class Error < StandardError; end

  # Método para mostrar la duración de la actividad
  # @return [String] Devuelve la duración de la actividad.
  def duracion_estimada(tiempo)
    "#{tiempo} minutos"      
  end
end
