//övning format
class Exercise {
  String exerciseName;
  dynamic link;
  String group;

  Exercise(this.exerciseName, this.link, this.group);
}

List<Exercise> arms = [
  Exercise(
      "Bicep curl", "https://www.youtube.com/watch?v=ykJmrZ5v0Oo", "Biceps"),
  Exercise("Skull crushers",
      "https://youtube.com/shorts/D1y1-sXZDA0?si=3M6QjV01rn7DNPwX", "Triceps"),
  Exercise("Forearm",
      "https://youtube.com/shorts/aiKCGfj35d0?si=-rEF8gMT29WI6gS3", "Forearm")
];

List<Exercise> back = [
  Exercise("Pull ups",
      "https://youtube.com/shorts/dvG8B2OjfWk?si=obOfcpJFu68IT6sa", "Back"),
  Exercise("Rows", "https://youtu.be/7beVFtohslI?si=gy458GuvEKi8hT3C", "Back")
];
