import 'course.dart';

class SpecializedCourse extends Course {
  // Variable
  final int unitCount = 3;

  // Constractor
  SpecializedCourse({
    required super.title,
    required super.id,
  });

  // Methods
  @override
  String toString() {
    return 'title: $title, id: $id, unitCount: $unitCount';
  }
}
