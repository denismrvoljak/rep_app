require "test_helper"

class ExerciseTest < ActiveSupport::TestCase
  test "exercise without name is invalid" do
    exercise = Exercise.new()
    assert_not exercise.valid?
  end
end
