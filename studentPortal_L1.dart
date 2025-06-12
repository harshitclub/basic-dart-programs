import 'dart:io';

void main() {
  // Take input for student name, age, and subjects
  // Use loops to input subject marks
  // Use conditions, ternary operator, switch-case, break/continue
  // Calculate average, assign grade, and show performance
  // Handle exceptions and use assert

  // Using variables and data types
  String name;
  int age;
  List<String> subjects = ['Math', 'Science', 'English'];
  List<double> marks = [];

  // taking user input with prompt message
  stdout.write("Enter your name: ");
  name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  try {
    age = int.parse(stdin.readLineSync()!);
    assert(age > 0 && age < 120, "❌ Invalid age entered.");
  } catch (e) {
    print("Please enter a valid number for age.");
    return; // stop program on invalid input
  }

  print("\nHello $name, enter your marks for the following subjects:\n");

  // for loop to input subjects marks
  for (int i = 0; i < subjects.length; i++) {
    stdout.write("${subjects[i]} marks: ");
    try {
      double score = double.parse(stdin.readLineSync()!);
      // conditions with continue
      if (score < 0 || score > 100) {
        print("⚠️ Marks should be between 0 and 100. Try again.\n");
        i--; // go back on iteration
        continue;
      }
      marks.add(score);
    } catch (e) {
      print("⚠️ Invalid input. Please enter a number.\n");
      i--;
      continue;
    }
  }

  // Using operators to calculate total and average
  double total = 0;
  for (double mark in marks) {
    total += mark;
  }

  double average = total / marks.length;

  // ternary operator to assign a grade
  String grade = (average >= 90)
      ? "A+"
      : (average >= 75)
      ? "A"
      : (average >= 60)
      ? "B"
      : (average >= 40)
      ? "C"
      : "F";

  // Switch case for performance message
  String performance;
  switch (grade) {
    case "A+":
      performance = "🏆 Excellent!";
      break;
    case "A":
      performance = "🎯 Very Good!";
      break;
    case "B":
      performance = "👍 Good!";
      break;
    case "C":
      performance = "🙂 Needs Improvement.";
      break;
    default:
      performance = "❌ Failed. Try harder next time.";
  }

  // while loop to display subject-wise status
  int index = 0;
  print("\nSubject Results:");
  while (index < subjects.length) {
    String status = marks[index] >= 40 ? "✅ Passed" : "❌ Failed";
    print("${subjects[index]}: ${marks[index]} - $status");
    index++;
  }

  // Final Summary
  print("\n🎓 Final Result for $name:");
  print("Total Marks  : $total");
  print("Average Marks: ${average.toStringAsFixed(2)}");
  print("Grade        : $grade");
  print("Performance  : $performance");

  //  Break example: check if failed in any subject
  for (double mark in marks) {
    if (mark < 40) {
      print("\n⚠️ You failed in at least one subject. Better luck next time!");
      break;
    }
  }
}
