import 'course.dart';

class GeneralCourse extends Course {
  // Variable
  final int unitCount = 2;

  // Constractor
  GeneralCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });

  // Methods
  @override
  String toString() {
    return 'title: $title, id: $id, unitCount: $unitCount';
  }

  @override
  double get costFactor => 1;
}
