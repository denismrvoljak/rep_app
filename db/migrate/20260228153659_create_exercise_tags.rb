class CreateExerciseTags < ActiveRecord::Migration[8.1]
  def change
    create_table :exercise_tags do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
