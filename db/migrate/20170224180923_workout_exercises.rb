class WorkoutExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_exercises do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :reps
      t.integer :sets 
    end
  end
end
