import 'dart:io';

void main() {
  // Variables and Data types
  String username = '';
  List<double> scores = [];
  double total = 0.0;
  double average = 0.0;

  // welcome and input
  print("Welcome to Dart Quiz Score Analyzer!");

  // get user name
  stdout.write("Enter your name: ");
  username = stdin.readLineSync()!;

  // Loop to collect 5 quiz scores
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter score for Quiz $i: ");
    double score = double.parse(stdin.readLineSync()!);
    scores.add(score);
    total += score;
  }

  // calculate average
  average = total / scores.length;

  // display summary
  print('\nQuiz Report for ${username.toUpperCase()}');
  print("Total Score: ${total.toStringAsFixed(2)}");
  print("Average Score: ${average.toStringAsFixed(2)}");

  // conditional logic to determine performance
  if (average >= 90) {
    print("🏆 Excellent performance, keep it up!");
  } else if (average >= 75) {
    print("👏 Good job! Aim higher.");
  } else if (average >= 50) {
    print("🙂 Fair, but improvement needed.");
  } else {
    print("⚠️ Poor performance. Focus more on preparation.");
  }

  // display pass/fail for each quiz
  print("\n📝 Individual Quiz Status:");
  for (int i = 0; i < scores.length; i++) {
    String status = scores[i] >= 40 ? "✅ Passed" : "❌ Failed";
    print("Quiz ${i + 1}: ${scores[i]} - $status");
  }
}
