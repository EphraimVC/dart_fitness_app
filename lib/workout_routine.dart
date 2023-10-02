import "dart:convert";
import "package:dart_fitness_app/exercice_list.dart";
import 'package:hive/hive.dart';

// model för träningspass
class Routine {
  String name;
  List<List<Exercise>> exercises;
  Routine(this.name, this.exercises);

  void addToList(List<Exercise> exeName) {
    exercises.add(exeName);
  }
}

//visar data från vald lista
dynamic showList(name) {
  for (List<Exercise> exerciseList in name.exercises) {
    for (Exercise exercise in exerciseList) {
      print(exercise.exerciseName);
      print(exercise.link);
      print(exercise.group);
    }
  }
}

//skapar en ny träningspass

dynamic newRoutine(varName, workoutname) {
  varName = [];
}

toJsonFormat(listName) {
  return json.encode(listName);
}






// var toJsonFormat = json.encode(newList);























// SKAPA FUNCTION SOM VID EVENT:

// 1 Konvertera lista till Json   X

// 2 spara lista (hive)

// 3 skapa knapp (spara träningsrutin)

