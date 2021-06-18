require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "full_name returns the capitalized first and last name" do
    user = User.new(first_name: "fanny", last_name: "rojon")
    assert_equal "Fanny Rojon", user.full_name
  end

end
