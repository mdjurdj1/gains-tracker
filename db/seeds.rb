#Let's throw the Rock into our DB. The Rock just had a chest day.
dwayne = User.create(username: "The Rock", email: "Therocksays@gmail.com", password: "abc123")
chest_day = Workout.create(name: "Chest/Tris", notes: "Had a good workout today. Can add weight to bench next time.", date: "2017-02-24")
chest_day.workout_exercises << WorkoutExercise.create(workout_id: 1, exercise_id: 1, reps: 5, sets: 5)
chest_day.workout_exercises << WorkoutExercise.create(workout_id: 1, exercise_id: 2, reps: 5, sets: 5)
dwayne.workouts << chest_day
dwayne.save

#Let's create some exercises for the database
Exercise.create(name: "Squat")
Exercise.create(name: "Deadlift")
Exercise.create(name: "Overhead Press")
Exercise.create(name: "T-Bar Row")
Exercise.create(name: "Dumbell Curls")
Exercise.create(name: "Barbell Curls")
Exercise.create(name: "Chest Flies")
