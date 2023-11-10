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
    assert_equal(Actividad.new(1, 'Marca', 'Titulo','Descripcion', Recursos::BEGINNER, 'Tipo', 'Categoria', 'Material', 60, 'Conceptos').duracion_estimada, "60 minutos")
  end

  def test_dificultad
    assert_not_nil Recursos::BEGINNER
    assert_not_nil Recursos::INTERMEDIATE
    assert_not_nil Recursos::ADVANCED
    assert_not_nil Recursos::EXPERT
  end 
end