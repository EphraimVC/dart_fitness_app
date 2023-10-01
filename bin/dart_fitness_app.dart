import "package:dart_fitness_app/exercice_list.dart";
import "package:dart_fitness_app/workout_routine.dart";

void main() {
  Routine lists = Routine("workouts", [arms]);
  Routine lists2 = Routine("workouts", [back]);
  for (List<Exercise> exerciseList in lists.exercises) {
    for (Exercise exercise in exerciseList) {
      print(exercise.exerciseName);
      print(exercise.link);
      print(exercise.group);
    }
  }
}












































  // the first Exercise word defines the variables instance of the Exercise class , and then the exercise
  //constructor function is called to create an instance of that class
  // Exercise bench = Exercise("push up", 4, 70);
  // Exercise back = Exercise("pin ups", 4, 50);
  // ExerciseList newWorkout = ExerciseList([]);
  // newWorkout.addNewExercise(bench);
  // newWorkout.addNewExercise(back);

  // for (Exercise exercise in newWorkout.exercises) {
  //   print({exercise.repetitions, exercise.name, exercise.durationInSeconds});
  // }