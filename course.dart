class Course {
  // Variabl e
  String title;
  int id;
  int unitCount;

  // Constractor
  Course({
    required this.title,
    required this.id,
    required this.unitCount,
  });
  // Methods

  @override
  String toString() {
    return 'title: $title , id: $id, unitCount: $unitCount';
  }
}
