dwayne = User.create(username: "The Rock", email: "Therocksays@gmail.com", password: "abc123")
chest_day = Workout.create(name: "Chest/Tris", notes: "Had a good workout today. Can add weight to bench next time.", date: "2017-02-24")
bench_press = Exercise.create(name: "Bench Press", sets: 5, reps: 5)
tri_ext = Exercise.create(name: "Tricep Extension", sets: 3, reps: 10)
chest_day.exercises << bench_press
chest_day.exercises << tri_ext
dwayne.workouts << chest_day
dwayne.save
