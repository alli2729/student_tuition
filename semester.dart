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
  void addGeneralCourseByInfo({required String title, required int id}) {
    final newCourse = GeneralCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  void addSpecializedCourseByInfo({required String title, required int id}) {
    final newCourse = SpecializedCourse(title: title, id: id);
    _courses.add(newCourse);
  }

  void addCourse({required Course course}) {
    _courses.add(course);
  }

  void addStudentToCourse({required Student student}) {
    Course.studentInCourse.add(student);
  }

  @override
  String toString() {
    return 'id: $id , title: $title , course: $_courses, Students :${Course.studentInCourse}';
  }
}
