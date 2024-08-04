import 'course.dart';

class GeneralCourse extends Course {
  // Variable
  final int unitCount = 2;

  // Constractor
  GeneralCourse({
    required super.title,
    required super.id,
  });

  // Methods
  @override
  String toString() {
    return 'title: $title, id: $id, unitCount: $unitCount';
  }
}
