import 'semester.dart';
import 'student.dart';
import 'university.dart';

class StudentTuition {
  // Variable
  Student student;
  Semester semester;
  University uni;

  // Constractor
  StudentTuition({
    required this.student,
    required this.semester,
    required this.uni,
  });

  // Methods
  int calculate({required int studentId, required int semesterId}) {
    // create semester by ID
    final Semester? semester = uni.getSemesterById(semesterId: semesterId);
    // create student by ID
    final Student? student = uni.getStudentById(studentId: studentId);

    if (student != null && semester != null) {
      // if student.location == uni.location
      int costPerUnit = 75;
      // else
      if (student.location != uni.location) costPerUnit = 125;

      int totalUnits = 0;
      for (var course in semester.courses) {
        // if student has course
        if (course.studentInCourse.contains(student)) {
          print(course);
          totalUnits += course.unitCount;
        }
      }

      print('totalUnits :$totalUnits');
      print('costPerUnit :$costPerUnit');

      // calculation
      int totalcost = costPerUnit * totalUnits;

      if (totalUnits < 7) totalcost += 100;

      return totalcost;
    }
    return -1;
  }

  @override
  String toString() {
    return 'student: $student, semester: $semester, uni: $uni';
  }
}
