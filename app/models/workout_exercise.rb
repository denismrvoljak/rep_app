class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  validates :weight, numericality: { greater_than_or_equal_to: 0 }
  validates :sets, numericality: { greater_than_or_equal_to: 1 }
  validates :reps, numericality: { greater_than_or_equal_to: 1 }
end
