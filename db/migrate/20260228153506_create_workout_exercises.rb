class CreateWorkoutExercises < ActiveRecord::Migration[8.1]
  def change
    create_table :workout_exercises do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.float :weight
      t.integer :sets
      t.integer :reps
      t.text :notes

      t.timestamps
    end
  end
end
