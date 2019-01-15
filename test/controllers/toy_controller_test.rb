require 'test_helper'

class ToyControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  toy = new Toy

  test sends_message do
    assert_response 'success', toy.message
  end
end
