// Single inheritance
class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

// Multilevel inheritance
class Puppy extends Dog {
  void smallSound() {
    print('Puppy yaps');
  }
}

// Hierarchical inheritance
class Cat extends Animal {
  @override
  void sound() {
    print('Cat meows');
  }
}

void main() {
  Dog dog = Dog();
  dog.sound();

  Puppy puppy = Puppy();
  puppy.sound();
  puppy.smallSound();

  Cat cat = Cat();
  cat.sound();
}
