import 'course.dart';
import 'general_course.dart';
import 'specialized_course.dart';
import 'student.dart';

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
    final newCourse = GeneralCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  void addSpecializedCourse({required String title, required int id}) {
    final newCourse = SpecializedCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  void addStudentToCourse({required Student s}) {
    Course.studentInCourse.add(s);
  }

  @override
  String toString() {
    return 'id: $id , title: $title , course: $_courses';
  }
}
