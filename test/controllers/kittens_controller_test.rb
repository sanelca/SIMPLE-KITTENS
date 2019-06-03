require 'test_helper'

class KittensControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @kitten = kittens(:charly)
  end

  test "should get index" do
    get kittens_url
    assert_response :success
  end

  test "should get new" do
    get new_kitten_url
    assert_response :success
  end

  test "should create kitten" do
    assert_difference('Kitten.count') do
      post kittens_url, params: { kitten: { name: 'Charly', age: "10", cuteness: "10", softness: "8" } }
    end
    assert_redirected_to kitten_path(Kitten.last)
  end
end
