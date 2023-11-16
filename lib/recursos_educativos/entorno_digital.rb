# Cree una jerarquıa de clases Ruby para representar un entorno digital de recursos educativos.
# Se trata de una coleccion de recursos educativos estructurado didacticamente dirigido a facilitar
# el desarrollo de experiencias de aprendizaje en torno a una unidad de saber o competencia. Las
# colecciones han de contar como mınimo con un codigo para su identificacion, un nombre, una
# categorıa que indique si se trata de una leccion, una unidad didactica, un curso o un taller y
# finalmente, un conjunto de recursos. Ademas, dada una coleccion de recursos se ha de poder
# obtener el numero de objetos de aprendizaje que la componen y el nivel medio de la misma.

require 'recursos_educativos/dificultad'
require 'recursos_educativos/actividad'

class ColeccionRecursos
  attr_accessor :codigo, :nombre, :categoria, :recursos

  def initialize(codigo, nombre, categoria)
    @codigo = codigo
    @nombre = nombre
    @categoria = categoria
    @recursos = []
  end

  def add_recurso(recurso)
    @recursos << recurso
  end

  def numero_objetos_aprendizaje
    @recursos.length
  end
end