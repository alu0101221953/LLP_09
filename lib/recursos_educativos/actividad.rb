require 'recursos_educativos/dificultad'

class Actividad
  attr_reader :id, :marca, :titulo, :descripcion, :nivel, :tipo, :categoria, :material, :duracion, :conceptos

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

  def to_s
    "Identificador: #{@id}\nMarca: #{@marca}\nTítulo: #{@titulo}\nDescripción: #{@descripcion}\nNivel de experiencia: #{@nivel}\nTipo de actividad: #{@tipo}\nCategoría del recurso: #{@categoria}\nMaterial necesario: #{@material}\nDuración: #{@duracion} minutos\nConceptos: #{@conceptos}"
  end
end