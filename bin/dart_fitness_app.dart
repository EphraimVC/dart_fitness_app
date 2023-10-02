import "package:dart_fitness_app/exercice_list.dart";
import "package:dart_fitness_app/workout_routine.dart";
import "package:dart_fitness_app/hive_classes.dart";
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

Future<void> initializeHive() async {
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);

  Hive.registerAdapter<HiveExercise>(ExerciseAdapter());
  Hive.registerAdapter<HiveRoutine>(RoutineAdapter());

  print('Hive initialized');
}

void main() async {
  await initializeHive(); // Call the initialization function
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