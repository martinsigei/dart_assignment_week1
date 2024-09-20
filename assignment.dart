// Main function to run all implementations
void main() {
  // Define and initialize variables
  int age = 25;
  double price = 19.99;
  String name = "Martin";
  bool isStudent = true;
  List<int> numbers = [12, 34, 56, 78, 90];

  print("Int: $age");
  print("Double: $price");
  print("String: $name");
  print("Bool: $isStudent");
  print("List: $numbers");

  // Type Conversion
  print("\nType Conversion:");
  print("String to Int: ${stringToInt('123')}");
  print("String to Double: ${stringToDouble('123.45')}");
  print("Int to String: ${intToString(456)}");
  print("Int to Double: ${intToDouble(456)}");

  // Function for Conversion
  convertAndDisplay("789");

  // Control Flow: if-else statements
  print("\nControl Flow: if-else");
  checkNumber(0); // Check if number is positive, negative, or zero
  checkVotingEligibility(16); // Check voting eligibility

  // Control Flow: switch case
  print("\nControl Flow: switch case");
  printDayOfWeek(3);

  // Loops
  print("\nFor Loop (1 to 10):");
  printNumbersForLoop();

  print("\nWhile Loop (10 to 1):");
  printNumbersWhileLoop();

  print("\nDo-While Loop (1 to 5):");
  printNumbersDoWhileLoop();

  // Combining Data Types and Control Flow
  print("\nCombining Data Types and Control Flow:");
  List<int> listOfNumbers = [5, 15, 55, 110, 7];
  categorizeAndDisplayNumbers(listOfNumbers);
}

// Type Conversion Functions
int stringToInt(String str) {
  return int.parse(str);
}

double stringToDouble(String str) {
  return double.parse(str);
}

String intToString(int number) {
  return number.toString();
}

double intToDouble(int number) {
  return number.toDouble();
}

// Function for Conversion and Display
void convertAndDisplay(String str) {
  int intValue = stringToInt(str);
  double doubleValue = stringToDouble(str);
  print("\nConvert and Display:");
  print("String: $str");
  print("Converted to int: $intValue");
  print("Converted to double: $doubleValue");
}

// Control Flow: If-Else Statements
void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Control Flow: Switch Case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// Loops

// For Loop: Print numbers 1 to 10
void printNumbersForLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While Loop: Print numbers 10 to 1
void printNumbersWhileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-While Loop: Print numbers 1 to 5
void printNumbersDoWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Complex Example: Categorizing numbers from a list

void categorizeAndDisplayNumbers(List<int> numbers) {
  for (var number in numbers) {
    print("Number: $number");

    // Check if number is even or odd
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    // Categorize number using switch statement
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("$number is small.");
        break;
      default:
        if (number >= 11 && number <= 100) {
          print("$number is medium.");
        } else if (number > 100) {
          print("$number is large.");
        }
    }
  }
}
