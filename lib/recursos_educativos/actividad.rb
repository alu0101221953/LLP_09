require 'recursos_educativos/dificultad'

# @author Victor Canovas del Pino
#
class Actividad
  include RecursosEducativos 
  
  # Atributos de la clase Actividad
  attr_accessor :id, :marca, :titulo, :descripcion, :nivel, :tipo, :categoria, :material, :duracion, :conceptos

  # Variable de clase para contar el número de instancias de la clase
  @@instancias = 0

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
    @@instancias += 1
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

  # Método para comparar el tiempo de duración de dos actividades
  # @param other [Actividad] Actividad a comparar
  # @return [Integer] Devuelve -1 si la duración de la actividad es menor que la de la otra actividad, 1 si es mayor y 0 si son iguales.
  def <=>(other)
    if @duracion < other.duracion
      return -1
    elsif @duracion > other.duracion
      return 1
    else
      return 0
    end
  end
end



class RecursosDigitalesAbiertos < Actividad
  # Atributos de la clase RecursosDigitalesAbiertos
  attr_accessor :uri, :fecha_creacion

  # Constructor de la clase RecursosDigitalesAbiertos
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
  # @param uri [String] URI (Uniform Resource Identifier) del recurso.
  # @param fecha_creacion [String] Fecha de creación del recurso.
  #
  def initialize(id, marca, titulo, descripcion, nivel, tipo, categoria, material, duracion, conceptos, uri, fecha_creacion)
    super(id, marca, titulo, descripcion, nivel, tipo, categoria, material, duracion, conceptos)
    @uri = uri
    @fecha_creacion = fecha_creacion
  end 
  
  # Método para mostrar la información del recurso digital abierto
  # @return [String] Devuelve la información del recurso digital abierto.
  def to_s  
    super + "\nURI: #{@uri}\nFecha de creación: #{@fecha_creacion}"
  end

  # Metodo para comprobar la fecha de creación del recurso digital abierto
  # @param other [RecursosDigitalesAbiertos] Recurso digital abierto a comparar 
  # @return [Integer] Devuelve -1 si la fecha de creación del recurso digital abierto es menor que la del otro recurso digital abierto, 1 si es mayor y 0 si son iguales.
  def <=>(other)
    super(other)
    if @fecha_creacion < other.fecha_creacion
      return -1
    elsif @fecha_creacion > other.fecha_creacion
      return 1
    else
      return 0
    end
  end
end