class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.string :name
      t.string :notes
      t.date :date
    end
  end
end
