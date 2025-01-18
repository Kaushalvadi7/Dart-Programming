// void resultOfOperation(int a, int b, int c, Function operation) {
//   print(operation(a, b ,c));
// }

// void main() {
//   Function multiply = (int a, int b,int c ) => a * b * c;
//   resultOfOperation(10, 20, 30, multiply);
// }

Function getRecipe(String type) {
  if (type == "Italian") {
    return (String dish) => print("Cooking $dish with Italian herbs!");
  } else if (type == "Chinese") {
    return (String dish) => print("Cooking $dish with Chinese spices!");
  } else {
    return (String dish) => print("Cooking $dish in a simple style.");
  }
}

void main() {
  var italianRecipe =
      getRecipe("Italian"); // Returns the Italian recipe function
  italianRecipe("Pizza"); // Cooking Pizza with Italian herbs!

  var chineseRecipe =
      getRecipe("Chinese"); // Returns the Chinese recipe function
  chineseRecipe("Noodles"); // Cooking Noodles with Chinese spices!
}
