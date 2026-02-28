class Tag < ApplicationRecord
  has_many :workout_tags
  has_many :workouts, through: :workout_tags
  has_many :exercise_tags
  has_many :exercises, through: :exercise_tags
end
