import 'student.dart';

abstract class Course {
  // Variables
  String title;
  int id;
  List<Student> _studentInCourse = [];

  // Constractor
  Course({
    required this.title,
    required this.id,
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
