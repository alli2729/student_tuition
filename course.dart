import 'student.dart';

abstract class Course {
  // Variables
  final String title;
  final int id;
  final int unitCount;
  final List<Student> _studentInCourse = [];
  final double costFactor = 0;

  // Constractor
  Course({
    required this.title,
    required this.id,
    required this.unitCount,
  });

  // Methods
  @override
  String toString() {
    return 'title: $title , id: $id';
  }

  void addStudent(Student student) {
    studentInCourse.add(student);
  }

  // Getters
  List<Student> get studentInCourse => _studentInCourse;
}
