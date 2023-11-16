# frozen_string_literal: true

require "test_helper"
require 'test/unit'
#require_relative "../lib/recursos_educativos/actividad"
#require_relative "../lib/recursos_educativos/dificultad"

class RecursosEducativosTest < Test::Unit::TestCase
  def setup
  end

  def test_initialize
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").id, 1)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").marca, "marca")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").titulo, "titulo")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").descripcion, "descripcion")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").nivel, Recursos::BEGINNER)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").tipo, "tipo")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").categoria, "categoria")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").material, "material")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").duracion, 60)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").conceptos, "conceptos")
  end

  def test_duracion_check
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos").duracion_check(60), true)
    #assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 0, "conceptos").duracion_check(0), false)
  end

  def test_to_s
    assert_equal(Actividad.new(1, 'Marca', 'Titulo','Descripcion', Recursos::BEGINNER, 'Tipo', 'Categoria', 'Material', 60, 'Conceptos').to_s, "Identificador: 1\nMarca: Marca\nTítulo: Titulo\nDescripción: Descripcion\nNivel de experiencia: #{Recursos::BEGINNER}\nTipo de actividad: Tipo\nCategoría del recurso: Categoria\nMaterial necesario: Material\nDuración: 60 minutos\nConceptos: Conceptos")
  end

  def test_duracion_estimada
    actividad = Actividad.new(1, 'Marca', 'Titulo', 'Descripcion', :beginner, 'Tipo', 'Categoria', 'Material', 60, 'Conceptos')
    assert_equal('60 minutos', actividad.duracion_estimada(60))
  end

  def test_dificultad
    assert_not_nil Recursos::BEGINNER
    assert_not_nil Recursos::INTERMEDIATE
    assert_not_nil Recursos::ADVANCED
    assert_not_nil Recursos::EXPERT
  end 
end

class RecursosDigitalesAbiertosTest < Test::Unit::TestCase
  def setup
  end

  def test_herencia
    assert_kind_of(RecursosEducativos, RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos", "http://www.google.es", "06/06/2016"))
    assert_not_nil RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos", "http://www.google.es", "06/06/2016")
  end

  def test_initialize
    assert_equal 'http://www.google.es', RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos", "http://www.google.es", "06/06/2016").uri
    assert_equal '06/06/2016', RecursosDigitalesAbiertos.new(1, "marca", "titulo", "descripcion", Recursos::BEGINNER, "tipo", "categoria", "material", 60, "conceptos", "http://www.google.es", "06/06/2016").fecha_creacion
  end

  def test_to_s
    assert_equal(RecursosDigitalesAbiertos.new(1, 'Marca', 'Titulo','Descripcion', Recursos::BEGINNER, 'Tipo', 'Categoria', 'Material', 60, 'Conceptos', 'http://www.google.es', '06/06/2016').to_s, "Identificador: 1\nMarca: Marca\nTítulo: Titulo\nDescripción: Descripcion\nNivel de experiencia: #{Recursos::BEGINNER}\nTipo de actividad: Tipo\nCategoría del recurso: Categoria\nMaterial necesario: Material\nDuración: 60 minutos\nConceptos: Conceptos\nURI: http://www.google.es\nFecha de creación: 06/06/2016")
  end  
end