import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class using inheritance
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a subclass that overrides a method
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

// Define a class that reads data from a file and initializes instances
class FileReader {
  List<String> readLinesFromFile(String filename) {
    // Read data from the file and return as a list of lines
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();
    return lines;
  }
}

// Define a method demonstrating the use of a loop
void printAnimalSounds(List<Animal> animals) {
  for (Animal animal in animals) {
    animal.makeSound();
  }
}

void main() {
  // Initialize instances of classes
  Dog dog = Dog();
  Cat cat = Cat();

  // Demonstrate method overriding
  dog.makeSound(); // Output: Woof!
  cat.makeSound(); // Output: Meow!

  // Initialize instances with data from a file
  FileReader fileReader = FileReader();
  List<String> lines = fileReader.readLinesFromFile('animal_sounds.txt');

  // Create a list of animals based on the data from the file
  List<Animal> animals = [];
  for (String line in lines) {
    if (line.toLowerCase() == 'dog') {
      animals.add(Dog());
    } else if (line.toLowerCase() == 'cat') {
      animals.add(Cat());
    }
  }

  // Demonstrate the use of a loop
  printAnimalSounds(animals);
}
