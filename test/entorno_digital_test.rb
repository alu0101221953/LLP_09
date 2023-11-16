# frozen_string_literal: true

require "test_helper"
require 'test/unit'
require_relative "../lib/recursos_educativos/entorno_digital"

class ColeccionRecursosTest < Test::Unit::TestCase

  def setup 
  end

  def test_initialize
    assert_equal(ColeccionRecursos.new(1, "nombre", "categoria").codigo, 1)
    assert_equal(ColeccionRecursos.new(1, "nombre", "categoria").nombre, "nombre")
    assert_equal(ColeccionRecursos.new(1, "nombre", "categoria").categoria, "categoria")
  end

  def test_add_recurso
    recurso1 = Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos")
    recurso2 = Actividad.new(2, "marca", "titulo", "descripcion", Recursos::INTERMEDIATE, "tipo", "categoria", "material", 60, "conceptos")
    recurso3 = Actividad.new(3, "marca", "titulo", "descripcion", Recursos::EXPERT, "tipo", "categoria", "material", 60, "conceptos")
    coleccion = ColeccionRecursos.new(1, "nombre", "categoria")
    coleccion.add_recurso(recurso1)
    coleccion.add_recurso(recurso2)
    coleccion.add_recurso(recurso3)
    assert_includes(coleccion.recursos, recurso1)
    assert_includes(coleccion.recursos, recurso2)
    assert_includes(coleccion.recursos, recurso3)
  end

  def test_numero_objetos_aprendizaje
    recurso1 = Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos")
    coleccion = ColeccionRecursos.new(1, "nombre", "categoria")
    coleccion.add_recurso(recurso1)
    assert_equal(coleccion.numero_objetos_aprendizaje, 1)
  end
end