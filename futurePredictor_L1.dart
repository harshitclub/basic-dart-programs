import 'dart:io';
import 'dart:math';

// Global variable
String appName = "Future Predictor 3000";

void main() {
  // Greeting using a global variable
  print("Welcome to $appName!");

  // User input
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!.trim();

  stdout.write("Enter your age: ");
  int age;
  try {
    age = int.parse(stdin.readLineSync()!);
    assert(age > 0, "Age must be greater than 0");
  } catch (e) {
    print("❌ Invalid age. Restart the program.");
    return;
  }
  stdout.write("Pick a lucky number (1–10): ");
  int luckyNum = int.parse(stdin.readLineSync()!);

  // Anonymous function for generating a lucky roll
  var generateLuck = () {
    var random = Random();
    return random.nextInt(100); // Generates number 0-99
  };

  int luckScore = generateLuck();

  // Arrow function to format name
  String formattedName = formatName(name);

  print("\n🧠 Analyzing your future, $formattedName... 🔍");

  // Simulating processing with a do-while loop
  int countDown = 3;

  do {
    print("⏳ $countDown...");
    sleep(Duration(seconds: 1)); // Pause for realism
    countDown--;
  } while (countDown > 0);

  // Future Prediction using switch-case and math
  String career = predictCareer(luckyNum);
  String city = predictCity(age);
  String superpower = predictPower(luckScore);

  // 📋 Final report
  print("\n🌟 YOUR FUTURE REPORT 🌟");
  print("👤 Name       : $formattedName");
  print("🎂 Age        : $age");
  print("🎰 Lucky No   : $luckyNum");
  print("💯 Luck Score : $luckScore");

  print("\n🧑‍💼 Future Job   : $career");
  print("🏙️ Future City  : $city");
  print("🦸 Superpower   : $superpower");

  // while-loop and break example
  print("\n🔁 Let’s print your name letter-by-letter (type 'q' to quit):");
  int i = 0;
  while (i < formattedName.length) {
    stdout.write("${formattedName[i]} ");
    if (formattedName[i].toLowerCase() == 'q') {
      print("\n⚠️ You typed 'q'! Breaking early.");
      break;
    }
    i++;
  }

  // foreach loop
  print("\n\n💬 Letters in your name (using forEach):");
  formattedName.split('').forEach((char) => print("$char"));

  // Final thanks (function with local scope variable)
  sayThanks();
}

// Arrow Function Example
String formatName(String name) => name.toUpperCase();

// Function with switch-case
String predictCareer(int num) {
  switch (num % 5) {
    case 0:
      return "Astronaut";
    case 1:
      return "AI Engineer";
    case 2:
      return "Wildlife Photographer";
    case 3:
      return "Game Developer";
    default:
      return "Quantum Researcher";
  }
}

// Function using ternary + if/else
String predictCity(int age) {
  return (age < 18)
      ? "Tokyo (Future Tech Hub)"
      : (age < 30)
      ? "New York (Fast Life)"
      : "Bali (Chill Coder's Paradise)";
}

// Function using if-else + dart:math
String predictPower(int luck) {
  if (luck > 90)
    return "Invisibility";
  else if (luck > 70)
    return "Time Travel";
  else if (luck > 50)
    return "Telekinesis";
  else if (luck > 30)
    return "Super Speed";
  else
    return "Talking to Animals";
}

// Demonstrate Score
void sayThanks() {
  String msg = "Thanks for using $appName. Stay awesome!";
  print("\n$msg");
}
