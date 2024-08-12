import 'course.dart';

class SpecializedCourse extends Course {
  // Variable
  final int unitCount = 3;

  // Constractor
  SpecializedCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });

  // Methods
  @override
  String toString() {
    return 'title: $title, id: $id, unitCount: $unitCount, cost factor: $costFactor';
  }

  @override
  int get costFactor => 2;
}
