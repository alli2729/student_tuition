import 'course.dart';

class Semester {
  // Variable
  int id;
  String title;
  List<Course> courses = [];

  // Constractor
  Semester({
    required this.id,
    required this.title,
  });

  // Methods
  @override
  String toString() {
    return 'id: $id , title: $title , course: $courses';
  }
}
