require 'test_helper'

class TecnicaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tecnica.new.valid?
  end
end
