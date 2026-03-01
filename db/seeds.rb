
upper_body_exercises = ["Bench Press", "Overhead Press", "Dip", "Lateral Raise"]
upper_body_tags = ["push", "upper body", "compound"]


upper_body_exercises.each do |name|
  ex = Exercise.find_or_create_by!(name: name)
  upper_body_tags.each do |tag_name|
    tag = Tag.find_or_create_by!(name: tag_name)
    ex.tags << tag unless ex.tags.include?(tag)
  end
end
