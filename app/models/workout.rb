class Workout < ApplicationRecord
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  has_many :workout_tags
  has_many :tags, through: :workout_tags
end
