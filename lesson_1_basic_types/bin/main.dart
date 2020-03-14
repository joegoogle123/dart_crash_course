
void main(List<String> arguments) {
  // Command Line arguments are supplied to the main method
  print("Number of arguments: ${arguments.length}");
  print("Arguments: $arguments");

//   Printing stuff to the terminal
  print("My name is joe"); // Strings can be both double quoted
  print('My name is joe'); // And single quoted
  print("My name is \"joe\""); // using special characters requires \ in front of them
  print('My name is "joe"');
  print('My name is \'joe\'');
  print("My name is 'joe'");

  // Compile time error vs runtime time error
  // Errors that can be caught before executions are called compile time errors
  // Errors that can be caught only during executions are called runtime errors
  // Basic Data Type
  int a = 1;
  double b = 2.0;
  // print both these variables on the same line
  print('$a $b');
  // print the addition of two numbers to stdout -> Standard Out meaning the "place" the program writes output
  print('$a + $b = ${a + b}');
  String string = "Hello World";
  var string_as_var = "Hello World 2";
  // And object is a collection of variables and methods to frame or order relevant content
  // An instance method is a function binded to an object, which allows a user to manipulate the variable
  var lower_cased_string = string.toLowerCase(); // creates a new variable! Important
  // Memory Model : [slot_1, slot_2, slot_3, slot_4] <- Shitty computer
  // 'string' -> slot_1, 'lower_cased_string' -> slot_2
  print("Regular String $string \nLower cased String $lower_cased_string");

  // List
  List<String> reference = ["string1","string2", "string3"]; // this is how you statically initialize an array
  print(reference); // prints everything in list
  print(reference[0]); // prints the first one
  // List<T> l, then l[k] where k is a integer will be of type T
  String firstElement = reference[0]; // why do arrays start with 0 instead of 1????
  String secondElement = reference[1];
//  String thirdElement = reference[-1]; // what does this do??? This is a runtime exception!
//  String fourthElement = reference[4]; // what does this do??? This is a runtime exception!
  reference[1] = "new string"; // how to modify array
  print(reference);

// What is a reference
  // This is the source of like half of all programming errors
  reference = ["string_1","string_2", "string_3"];
  // This is a shallow copy! What does that mean?
  // Shallow copies are not replacing content within main memory
  List<String> referenceCopy = reference; // What is the contents of reference copy
  print("reference : $reference");
  print("reference copy: $referenceCopy");

  referenceCopy[1] = "string_4"; // inplace change
  print("reference copy after change: $referenceCopy");
  print("reference after change: $reference");

  // How do you make a deep copy of an array?
  // Make deep copy
  List<String> deepCopy = new List(); // object instantiating
  deepCopy.addAll(reference);
  deepCopy[1] = "string_9";
  print(deepCopy); //deep copy
  print(reference);// original
  print(referenceCopy); // shallow copy



// Conditional statments
  bool boolean_variable = true;
  // If stuff inside parenthesis is tr
  if (boolean_variable) {
    print("Inside first");
    print("Variable $boolean_variable"); // <- a
  } else {
    print("Inside second");
    print("Variable $boolean_variable"); // <- b
  }

  int variable = 2;

  if (variable == 1) {
    print("Inside first");
  } else if (variable == 2) {
    print("Inside second");
  } else if (variable == 3) {
    print("Inside third");
  } else {
    print("None of the conditions matched");
  }

  int evenOrOdd = 132;

  bool isEven = evenOrOdd % 2 == 0;
  print(isEven);

  if (isEven) {
    print ("Even");
  } else if (!isEven) {
    print("Odd");
  }
  // Less efficient
  if (evenOrOdd % 2 == 0) {
    print ("Even");
  } else if (evenOrOdd % 2 != 0) {
    print("Odd");
  }
  // <1,2,3> , <1,3,4>
}
