# Cree una jerarquıa de clases Ruby para representar un entorno digital de recursos educativos.
# Se trata de una coleccion de recursos educativos estructurado didacticamente dirigido a facilitar
# el desarrollo de experiencias de aprendizaje en torno a una unidad de saber o competencia. Las
# colecciones han de contar como mınimo con un codigo para su identificacion, un nombre, una
# categorıa que indique si se trata de una leccion, una unidad didactica, un curso o un taller y
# finalmente, un conjunto de recursos. Ademas, dada una coleccion de recursos se ha de poder
# obtener el numero de objetos de aprendizaje que la componen y el nivel medio de la misma.

require 'recursos_educativos/dificultad'
require 'recursos_educativos/actividad'

# @author Victor Canovas del Pino
#

# Clase que representa un entorno digital de recursos educativos
class ColeccionRecursos
  include RecursosEducativos

  # Atributos de la clase ColeccionRecursos
  attr_accessor :codigo, :nombre, :categoria, :recursos

  # Constructor de la clase ColeccionRecursos
  #
  # @param codigo [Integer] Código de la colección de recursos.
  # @param nombre [String] Nombre de la colección de recursos.
  # @param categoria [String] Categoría de la colección de recursos.
  #
  def initialize(codigo, nombre, categoria)
    @codigo = codigo
    @nombre = nombre
    @categoria = categoria
    @recursos = []
  end

  # Método para añadir un recurso a la colección
  # @param recurso [Actividad] Recurso a añadir a la colección.
  def add_recurso(recurso)
    @recursos << recurso
  end

  # Método para obtener el número de objetos de aprendizaje que componen la colección
  # @return [Integer] Número de objetos de aprendizaje que componen la colección.
  def numero_objetos_aprendizaje
    @recursos.length
  end

  # Método para obtener el nivel medio de la colección
  # @return [Float] Nivel medio de la colección.
  def nivel_medio
    nivel = 0
    @recursos.each do |recurso|
      nivel += map_nivel_to_valor(recurso.nivel)
    end
    nivel.to_f / @recursos.length
  end

  # Método para mapear el nivel de dificultad a un valor numérico
  # @param nivel [Symbol] Nivel de dificultad.
  # @return [Integer] Valor numérico del nivel de dificultad.
  def map_nivel_to_valor(nivel)
    case nivel
    when Recursos::BEGINNER
      1
    when Recursos::INTERMEDIATE
      2
    when Recursos::ADVANCED
      3
    when Recursos::EXPERT
      4
    else
      0  # Valor predeterminado si el nivel no coincide con ninguna constante conocida
    end
  end
end