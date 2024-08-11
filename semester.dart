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
  void addGeneralCourseByInfo({
    required String title,
    required int id,
    required int unitCount,
  }) {
    final newCourse = GeneralCourse(title: title, id: id, unitCount: unitCount);
    _courses.add(newCourse);
  }

  void addSpecializedCourseByInfo({
    required String title,
    required int id,
    required int unitCount,
  }) {
    final newCourse =
        SpecializedCourse(title: title, id: id, unitCount: unitCount);
    _courses.add(newCourse);
  }

  void addCourse({required Course course}) {
    _courses.add(course);
  }

  Course getCourseById({required int courseId}) {
    final courseIndex =
        _courses.indexWhere((element) => element.id == courseId);
    final isCourseFound = courseIndex != -1;

    if (isCourseFound) {
      return _courses[courseIndex];
    }

    return _courses[-1];
  }

  @override
  String toString() {
    return 'id: $id , title: $title , course: $_courses';
  }
}
