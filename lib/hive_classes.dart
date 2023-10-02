import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class HiveExercise {
  @HiveField(0)
  String exerciseName;

  @HiveField(1)
  String link;

  @HiveField(2)
  String group;

  HiveExercise(this.exerciseName, this.link, this.group);
}

@HiveType(typeId: 1)
class HiveRoutine {
  @HiveField(0)
  String name;

  @HiveField(1)
  List<List<HiveExercise>> exercises;

  HiveRoutine(this.name, this.exercises);

  void addToList(List<HiveExercise> exeName) {
    exercises.add(exeName);
  }
}
