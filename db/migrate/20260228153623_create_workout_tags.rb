class CreateWorkoutTags < ActiveRecord::Migration[8.1]
  def change
    create_table :workout_tags do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
