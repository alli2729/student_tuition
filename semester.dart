import 'course.dart';
import 'specialized_course.dart';

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
  void addGeneralCourse({required String title, required int id}) {
    final newCourse = SpecializedCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  void addSpecializedCourse({required String title, required int id}) {
    final newCourse = SpecializedCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  @override
  String toString() {
    return 'id: $id , title: $title , course: $_courses';
  }
}
