require "test_helper"

class Discard::Rails::ObserversTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Discard::Rails::Observers::VERSION
  end
end
