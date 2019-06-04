require 'test_helper'

class KittenTest < ActiveSupport::TestCase
  test "should not save kitten without name" do
    kitten = Kitten.new
    assert_not kitten.save
  end
end
