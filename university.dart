import 'location.dart';
import 'semester.dart';

class University {
  // Variable
  final Location location;
  final List<Semester> semester = [];
  final name;
  final id;

  // Constractor
  University({
    required this.location,
    required this.name,
    required this.id,
  });

  // Methods
  @override
  String toString() {
    return 'location: $location , name: $name , id: $id';
  }
}
