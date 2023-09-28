import "package:dart_fitness_app/exercice_list.dart";

// skapar ett träningspass
class Routine {
  String name;
  List<Exercise> workout;

  Routine(this.name, this.workout);

  void addExercise(Exercise addToWorkout) {
    workout.add(addToWorkout);
  }
}
