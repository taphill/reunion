require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_it_exists
    reunion = Reunion.new("1406 BE")

    assert_instance_of Reunion, reunion
  end

  def test_it_has_attributes
    reunion = Reunion.new("1406 BE")

    assert_equal '1406 BE', reunion.name
  end
end
