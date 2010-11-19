require 'test_helper'

class LibroTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Libro.new.valid?
  end
end
