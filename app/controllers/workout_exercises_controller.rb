class WorkoutExercisesController < ApplicationController
  before_action :set_workout, only: [ :create ]

  def create
    @workout_exercise = @workout.workout_exercises.build(workout_exercise_params)
    if @workout_exercise.save
      redirect_to @workout, notice: "Exercise added to workout"
    else
      redirect_to @workout, alert: "Could not add exercise"
    end
  end

private

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

  def workout_exercise_params
    params.require(:workout_exercise).permit(:exercise_id, :weight, :sets, :reps)
  end
end
