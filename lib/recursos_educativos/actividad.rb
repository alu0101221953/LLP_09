require 'recursos_educativos/dificultad'

# @author Victor Canovas del Pino
#
class Actividad
  include RecursosEducativos 
  
  attr_accessor :id, :marca, :titulo, :descripcion, :nivel, :tipo, :categoria, :material, :duracion, :conceptos

  # Constructor de la clase Actividad
  #
  # @param id [Integer] Identificador de la actividad.
  # @param marca [String] Marca de la actividad.
  # @param titulo [String] Título de la actividad.
  # @param descripcion [String] Descripción de la actividad.
  # @param nivel [Symbol] Nivel de experiencia de la actividad.
  # @param tipo [String] Tipo de actividad.
  # @param categoria [String] Categoría del recurso.
  # @param material [String] Material necesario para realizar la actividad.
  # @param duracion [Integer] Duración de la actividad.
  # @param conceptos [String] Conceptos que se trabajan en la actividad.
  #
  def initialize(id, marca, titulo, descripcion, nivel, tipo, categoria, material, duracion, conceptos)
    @id = id
    @marca = marca
    @titulo = titulo
    @descripcion = descripcion
    @nivel = nivel
    @tipo = tipo
    @categoria = categoria
    @material = material
    if duracion_check(duracion)
      @duracion = duracion
    else
      raise ArgumentError, 'La duración debe ser un número mayor que 0'
    end
    @conceptos = conceptos
  end 

  # Método para comprobar que la duración es un número mayor que 0
  # @param duracion [Integer] Duración de la actividad.
  # @return [Boolean] Devuelve true si la duración es un número mayor que 0, false en caso contrario.
  #
  def duracion_check(duracion)
    if duracion.is_a? Numeric
      if duracion > 0
        return true
      else
        return false
      end
    else
      return false
    end
  end

  # Método para mostrar la información de la actividad
  # @return [String] Devuelve la información de la actividad.
  def to_s
    "Identificador: #{@id}\nMarca: #{@marca}\nTítulo: #{@titulo}\nDescripción: #{@descripcion}\nNivel de experiencia: #{@nivel}\nTipo de actividad: #{@tipo}\nCategoría del recurso: #{@categoria}\nMaterial necesario: #{@material}\nDuración: #{@duracion} minutos\nConceptos: #{@conceptos}"
  end
end

class RecursosDigitalesAbiertos < Actividad
  attr_accessor :uri, :fecha_creacion

  def initialize(id, marca, titulo, descripcion, nivel, tipo, categoria, material, duracion, conceptos, uri, fecha_creacion)
    super(id, marca, titulo, descripcion, nivel, tipo, categoria, material, duracion, conceptos)
    @uri = uri
    @fecha_creacion = fecha_creacion
  end  
end