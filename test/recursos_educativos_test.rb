# frozen_string_literal: true

require "test_helper"
require 'test/unit'
require_relative "../lib/recursos_educativos/actividad"

class RecursosEducativosTest < Test::Unit::TestCase
  def setup
  end

  def test_initialize
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").id, 1)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").marca, "marca")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").titulo, "titulo")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").descripcion, "descripcion")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").nivel, :beginner)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").tipo, "tipo")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").categoria, "categoria")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").material, "material")
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").duracion, 60)
    assert_equal(Actividad.new(1, "marca", "titulo", "descripcion", :beginner, "tipo", "categoria", "material", 60, "conceptos").conceptos, "conceptos")
  end

end