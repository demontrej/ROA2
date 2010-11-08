require 'test_helper'

class OaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Oa.new.valid?
  end
end
