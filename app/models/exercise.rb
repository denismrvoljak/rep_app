class Exercise < ApplicationRecord
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  has_many :exercise_tags
  has_many :tags, through: :exercise_tags
end
