import 'location.dart';
import 'semester.dart';
import 'student.dart';

class University {
  // Variable
  final Location location;
  final List<Semester> _semester = [];
  final List<Student> _students = [];
  final String name;
  final int id;

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

  void addStudent(
      {required String name, required int id, required Location location}) {
    final newStudent = Student(name: name, id: id, location: location);
    _students.add(newStudent);
  }

  @override
  String toString() {
    return 'location: $location , name: $name , id: $id , semesters: $_semester';
  }

  void addCourseToSemesterById(
      {required int semesterId,
      required int courseId,
      required int courseUnitCount,
      required String courseTitle}) {
    final int semesterIndex =
        _semester.indexWhere((element) => element.id == semesterId);
    final semesterFound = semesterIndex != -1;
    if (semesterFound) {
      if (courseUnitCount == 2) {
        _semester[semesterIndex]
            .addGeneralCourse(title: courseTitle, id: courseId);
      } else {
        _semester[semesterIndex]
            .addSpecializedCourse(title: courseTitle, id: courseId);
      }
    }
  }

  // Getters
  List<Semester> get Semesters => _semester;
  List<Student> get Students => _students;
}
