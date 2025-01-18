// void main() {
//   3.toWord;
// }

// extension on int {
//   get toWord {
//     switch (this) {
//       case 1:
//         print("one");
//       case 2:
//         print("Two");
//       case 3:
//         print("Three");
//       case 4:
//         print("Four");
//         Default:
//         print("Enter only four number");
//     }
//   }
// }

void main() {
  List<int> a = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(a.sum);
}

extension on List<int> {
  get sum {
    int c = 0;
    this.forEach((e) {
      c = c + e;
    });
    return c;
  }
}
