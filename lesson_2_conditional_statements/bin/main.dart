
//Output            // Input
String makeUpperCase(String myString) {
  if (checkIfNull(myString)) return ""; // You can use a function in a function!
  // Function could have multiple exit points in this case on line 4 and line 7
  var toReturn = myString.toUpperCase(); // write code ...
  return toReturn; // return this variable
}

bool checkIfNull(String myString) {
  return myString == null;
}

int findMaximum(List<int> numbers) {
   return -1;
}

int max(int a, int b) {
  if (b > a) {
    return b;
  } else {
    return a;
  }
}

void main(List<String> arguments) {
  int myVariable = 10;
  // loop allows a user to do something over and over again
  int endValue = 10;
  for (var k = 0; k < endValue; k++) {
    print(k);
  }
  int k = 0;
  while (k < endValue) {
    print(k);
//    k = k + 1;
    k++;
  }
  // her is a foreach loop
  var myList = [1,2,3,4,5];
  for (var element in myList) {
    int myVariable = 10;
    // You can "use" element more than once within the iterative scope <- this means
    // within the bracket
    print("Current element: $element");
    print("Current element tims 2: ${2*element}");
  }
  var numbers = [3,1,2,1,2,10,11,100,123,12310,1]; //10000s of numbers

  // given the next number in the sequence how would you update your guess?
  var myGuess = numbers[0]; // 1
  var nextNumber = numbers[0]; // 2
  myGuess = max(myGuess, nextNumber);

  nextNumber = numbers[1];
  myGuess = max(myGuess, nextNumber);

  nextNumber = numbers[2];
  myGuess = max(myGuess, nextNumber);

  nextNumber = numbers[3];
  myGuess = max(myGuess, nextNumber);

  nextNumber = numbers[4];
  myGuess = max(myGuess, nextNumber);

  var currMax = numbers[0];
  for (var k = 0; k < numbers.length; k++) {
    var thisNumber = numbers[k];
    currMax = max(currMax, thisNumber);
  }
  print(currMax);

//  for (var number in numbers) {
//    currMax = max(currMax, number);
//  }
//  print(currMax);

//Write the min function!
  var numbers2 = [-1,-10,11];

  var myGuess2 = numbers2[0];
  var nextNumber2 = numbers2[1];
  myGuess2 = min(myGuess2, nextNumber2);

  nextNumber2 = numbers2[2];
  myGuess2 = min(myGuess2, nextNumber2);
  print(myGuess2);

  // turn it into a loop!
  numbers2 = [-1,-10,11];
  // numbers2[0] = -1
  // numbers2[1] = -10
  // numbers2[2] = 11

  var currMin = numbers2[0];
  for(var x = 0; x < numbers2.length; x++){
    var thisNumber2 = numbers2[x];
    currMin = min(currMin, thisNumber2);
  }
  print(currMin);
  //
  var numbers3 = [1,2,3];
  var answer = mySum(numbers3);
  print(answer);
}

int min(int a, int b) {
  if(a < b) {
    return a;
  }else {
    return b;
  }
}
// P1
//TODO add the numbers inside numbers and return its value.
  // If numbers is null or empty return 0
int mySum(List<int> numbers) {
  return -1;
}
// P2
// A prime number is a number this only divible by 1 and the number itself, for example
// 7 is prime but 15 is not.
// return true if the number supplied is prime otherwise return false
bool isPrime(int number) {
  return false;
}
