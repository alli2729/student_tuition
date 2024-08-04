import 'course.dart';

class Semester {
  // Variable
  int id;
  String title;
  List<Course> _courses = [];

  // Constractor
  Semester({
    required this.id,
    required this.title,
  });

  // Methods
  void addCourse(
      {required String title, required int id, required int unitCount}) {
    final newCourse = Course(title: title, id: id, unitCount: unitCount);
    _courses.add(newCourse);
  }

  @override
  String toString() {
    return 'id: $id , title: $title , course: $_courses';
  }
}
