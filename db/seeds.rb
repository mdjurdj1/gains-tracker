#Let's throw the Rock into our DB. The Rock just had a chest day.
dwayne = User.create(username: "The Rock", email: "Therocksays@gmail.com", password: "abc123")
workout_1 = Workout.create(name: "Chest/Tris", notes: "Had a good workout today. Can add weight to bench next time.", date: "2017-02-18")
workout_1.workout_exercises << WorkoutExercise.create(workout_id: 1, exercise_id: 2)
workout_1.workout_exercises << WorkoutExercise.create(workout_id: 1, exercise_id: 7)
workout_1.workout_exercises << WorkoutExercise.create(workout_id: 1, exercise_id: 8)
dwayne.workouts << workout_1
dwayne.save

workout_2 = Workout.create(name: "Back/Bis", notes: "Upped my deadlift 10 pounds - preworkout meal helped!", date: "2017-02-24")
workout_2.workout_exercises << WorkoutExercise.create(workout_id: 2, exercise_id: 3)
workout_2.workout_exercises << WorkoutExercise.create(workout_id: 2, exercise_id: 4)
dwayne.workouts << workout_2
dwayne.save

alexa = User.create(username: "Lexis", email: "Alexaa@yahoo.com", password: "abc123")
workout_3 = Workout.create(name: "Legs", notes: "Felt really tired when I got to the gym today. Could use more sleep!", date: "2017-01-15")
workout_3.workout_exercises << WorkoutExercise.create(workout_id: 3, exercise_id: 1)
workout_3.workout_exercises << WorkoutExercise.create(workout_id: 3, exercise_id: 9)
alexa.workouts << workout_3
alexa.save


#Let's create some exercises for the database
Exercise.create(name: "Squat", bodypart: "Legs")
Exercise.create(name: "Bench Press", bodypart: "Chest")
Exercise.create(name: "Deadlift", bodypart: "Back")
Exercise.create(name: "Overhead Press", bodypart: "Shoulders")
Exercise.create(name: "T-Bar Row", bodypart: "Back")
Exercise.create(name: "Barbell Curls", bodypart: "Biceps")
Exercise.create(name: "Dumbell Curls", bodypart: "Biceps")
Exercise.create(name: "Tricep Extensions", bodypart: "Triceps")
Exercise.create(name: "Chest Flies", bodypart: "Chest")
Exercise.create(name: "Leg Press", bodypart: "Legs")
