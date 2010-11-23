require 'test_helper'

class UnitarioTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Unitario.new.valid?
  end
end
