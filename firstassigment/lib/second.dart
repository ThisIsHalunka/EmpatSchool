void main() {
  int? n;
  n ??= 10;
  print(n);

  var addTwoNumbers = (int a, int b) => a + b;
  print(addTwoNumbers(4, 5));

  String greet(String name, {String greetings = "Привіт, "}) {
    return "$greetings + $name";
  }

  var catColor = Cat.factoryConstructor("Green");
  print(catColor);

  var newPoint = Point(4, 5);
  print(newPoint);

  var dog = Dog();
  dog.breathe();
  dog.bark();
}

class Cat {
  final String color;

  Cat(this.color);

  factory Cat.factoryConstructor(String color) {
    return Cat(color);
  }
}

class Point {
  final double x;
  final double y;
  Point(this.x, this.y);
}

class Animal {
  void breathe() {
    print("I'm breathing");
  }
}

mixin Bark {
  void bark() => print("I'm barking");
}

class Dog extends Animal with Bark {}
