import 'location.dart';
import 'semester.dart';

class University {
  // Variable
  final Location location;
  final List<Semester> _semester = [];
  final name;
  final id;

  // Constractor
  University({
    required this.location,
    required this.name,
    required this.id,
  });

  // Methods
  void addSemester({required int id, required String title}) {
    final newSemester = Semester(id: id, title: title);
    _semester.add(newSemester);
  }

  @override
  String toString() {
    return 'location: $location , name: $name , id: $id , semesters: $_semester';
  }

  // Getters
  List<Semester> get Semesters => _semester;
}
