
upper_body_exercises = [ "Bench Press", "Overhead Press", "Dip" ]
upper_body_tags = [ "push", "upper body", "compound" ]
lower_body_exercises = [ "Squat", "Leg Press", "Romanian Deadlift" ]
lower_body_tags = [ "legs", "lower body", "compound" ]


upper_body_exercises.each do |name|
  ex = Exercise.find_or_create_by!(name: name)
  upper_body_tags.each do |tag_name|
    tag = Tag.find_or_create_by!(name: tag_name)
    ex.tags << tag unless ex.tags.include?(tag)
  end
end


lower_body_exercises.each do |name|
  ex = Exercise.find_or_create_by!(name: name)
  lower_body_tags.each do |tag_name|
    tag = Tag.find_or_create_by!(name: tag_name)
    ex.tags << tag unless ex.tags.include?(tag)
  end
end


upper_body_1 = Workout.find_or_create_by!(name: "Upper Body 1", date: '2026-03-01')
lower_body_1 = Workout.find_or_create_by!(name: "Lower Body 1", date: '2026-03-01')

bench = Exercise.find_by!(name: "Bench Press")
overhead_press = Exercise.find_by!(name: "Overhead Press")
dip = Exercise.find_by!(name: "Dip")
squat = Exercise.find_by!(name: "Squat")

WorkoutExercise.find_or_create_by!(workout: upper_body_1, exercise: bench, weight: 80, sets: 3, reps: 8)
WorkoutExercise.find_or_create_by!(workout: upper_body_1, exercise: overhead_press, weight: 28, sets: 3, reps: 7)
WorkoutExercise.find_or_create_by!(workout: upper_body_1, exercise: dip, weight: 40, sets: 3, reps: 6)

WorkoutExercise.find_or_create_by!(workout: lower_body_1, exercise: squat, weight: 60, sets: 3, reps: 10)


[ "push", "upper body" ].each do |tag_name|
  tag = Tag.find_or_create_by!(name: tag_name)
  upper_body_1.tags << tag unless upper_body_1.tags.include?(tag)
end
