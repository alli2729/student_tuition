import 'location.dart';

class Student {
  // Variable
  final String name;
  final int id;
  final Location location;

  // Constractor
  Student({
    required this.name,
    required this.id,
    required this.location,
  });

  // Methods
  @override
  String toString() {
    return 'name: $name , id: $id';
  }
}
