void main() {
  // 1️⃣ Variables and Data Types
  String studentName = "Harshit Kumar"; // String variable
  int rollNumber = 101; // Integer variable
  double mathMarks = 85.5;
  double scienceMarks = 78.0;
  double englishMarks = 92.0;
  int totalSubjects = 3;

  // 2️⃣ Arithmetic Operators: Calculate total and percentage
  double totalMarks = mathMarks + scienceMarks + englishMarks;
  double percentage = totalMarks / totalSubjects;

  // 3️⃣ Assignment Operator
  String grade = ""; // initializing with empty string

  // 4️⃣ Relational and Logical Operators
  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 75 && percentage < 90) {
    grade = "A";
  } else if (percentage >= 60 && percentage < 75) {
    grade = "B";
  } else if (percentage >= 40 && percentage < 60) {
    grade = "C";
  } else {
    grade = "Fail";
  }

  // 🖨️ Output
  print("📘 Student Report");
  print("Name       : $studentName");
  print("Roll No.   : $rollNumber");
  print("Total Marks: $totalMarks");
  print("Percentage : ${percentage.toStringAsFixed(2)}%");
  print("Grade      : $grade");

  // 5️⃣ Logical Operator example
  bool isPass = percentage >= 40 && grade != "Fail";
  print("Status     : ${isPass ? "✅ Passed" : "❌ Failed"}");
}
