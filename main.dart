import 'course.dart';
import 'general_course.dart';
import 'location.dart';
import 'semester.dart';
import 'specialized_course.dart';
import 'student.dart';
import 'university.dart';

// void main(List<String> args) {
//   // shiraz
//   final Location shiraz = Location(title: 'shiraz', id: 1);

//   // university
//   final University taaviUniversity = University(
//     location: shiraz,
//     name: 'taav',
//     id: 1,
//   );

//   // add semester
//   Semester summer2024 = Semester(id: 1, title: '2024 summer');
//   taaviUniversity.addSemester(semester: summer2024);

//   // add new cource to (2024 summer) semester
//   Course math1 = SpecializedCourse(title: 'Math1', id: 1001);
//   Course pingPong = GeneralCourse(title: 'Ping Pong', id: 1002);

//   taaviUniversity.Semesters.first.addCourse(course: math1);
//   taaviUniversity.Semesters.first.addCourse(course: pingPong);

//   // add students
//   Student s1 = Student(name: 'ali karimi', id: 1, location: shiraz);
//   Student s2 = Student(name: 'sina rezaei', id: 2, location: shiraz);

//   taaviUniversity.addStudent(student: s1);
//   taaviUniversity.addStudent(student: s2);

//   // add students to Course
//   taaviUniversity.Semesters.first.addStudentToCourse(student: s1);

//   print(summer2024);
// }

void main(List<String> args) {
  
  final GeneralCourse g = GeneralCourse(
    title: 'pingpong',
    id: 1,
    unitCount: 2,
  );

  final SpecializedCourse s = SpecializedCourse(
    title: 'Math1',
    id: 2,
    unitCount: 3,
  );

  print(g.costFactor);
  print(s.costFactor);
}
