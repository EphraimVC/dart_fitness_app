import 'package:hive/hive.dart';
import "package:dart_fitness_app/hive_classes.dart";

// hive boxes
Future<Box<HiveExercise>> getExerciseBox() async {
  return await Hive.openBox<HiveExercise>('exerciseBox');
}

Future<Box<HiveRoutine>> getRoutineBox() async {
  return await Hive.openBox<HiveRoutine>('routineBox');
}

// add exercises and routines
Future<void> addExercise(HiveExercise exercise) async {
  final box = await getExerciseBox();
  await box.add(exercise);
}

Future<void> addRoutine(HiveRoutine routine) async {
  final box = await getRoutineBox();
  await box.add(routine);
}

// get exercises and routines
Future<List<HiveExercise>> getAllExercises() async {
  final box = await getExerciseBox();
  return box.values.toList();
}

Future<List<HiveRoutine>> getAllRoutines() async {
  final box = await getRoutineBox();
  return box.values.toList();
}

// update exercises and routines
Future<void> updateExercise(int index, HiveExercise updatedExercise) async {
  final box = await getExerciseBox();
  await box.putAt(index, updatedExercise);
}

Future<void> updateRoutine(int index, HiveRoutine updatedRoutine) async {
  final box = await getRoutineBox();
  await box.putAt(index, updatedRoutine);
}

// delete exercises and routines
Future<void> deleteExercise(int index) async {
  final box = await getExerciseBox();
  await box.deleteAt(index);
}

Future<void> deleteRoutine(int index) async {
  final box = await getRoutineBox();
  await box.deleteAt(index);
}
