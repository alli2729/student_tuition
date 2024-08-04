import 'location.dart';
import 'university.dart';

void main(List<String> args) {
  // shiraz
  final Location shiraz = Location(title: 'shiraz', id: 1);

  // university
  final University taaviUniversity = University(
    location: shiraz,
    name: 'taav',
    id: 1,
  );

  // add semester
  taaviUniversity.addSemester(id: 1, title: '2024 summer');

  // add new cource to (2024 summer) semester
  taaviUniversity.Semesters.first.addSpecializedCourse(
    title: 'Math 1',
    id: 1001,
  );

  taaviUniversity.Semesters.first.addGeneralCourse(
    title: 'Ping Pong',
    id: 1002,
  );
}
