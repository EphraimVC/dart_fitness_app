import "dart:convert";

import "package:dart_fitness_app/exercice_list.dart";

// model för träningspass
class Routine {
  String name;
  List<List<Exercise>> exercises;
  Routine(this.name, this.exercises);
}



// var toJsonFormat = json.encode(newList);























// SKAPA FUNCTION SOM VID EVENT:

// 1 Konvertera lista till Json   X

// 2 spara lista (hive)

// 3 skapa knapp (spara träningsrutin)

