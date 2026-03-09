require "test_helper"

class WorkoutExerciseTest < ActiveSupport::TestCase
  test "workout exercises with negative weight is invalid" do
    workout = Workout.new(name: "Push day", date: Date.today)
    exercise = Exercise.new(name: "Bench Press")
    entry = WorkoutExercise.new(workout: workout, exercise: exercise, weight: -1, sets: 3, reps: 8)
    assert_not entry.valid?
  end
  test "workout exercises with negative sets is invalid" do
    workout = Workout.new(name: "Push day", date: Date.today)
    exercise = Exercise.new(name: "Bench Press")
    entry = WorkoutExercise.new(workout: workout, exercise: exercise, weight: 8, sets: -1, reps: 8)
    assert_not entry.valid?
  end
  test "workout exercises with negative reps is invalid" do
    workout = Workout.new(name: "Push day", date: Date.today)
    exercise = Exercise.new(name: "Bench Press")
    entry = WorkoutExercise.new(workout: workout, exercise: exercise, weight: 8, sets: 3, reps: -1)
    assert_not entry.valid?
  end
end
