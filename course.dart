abstract class Course {
  // Variabl e
  String title;
  int id;
  // int unitCount;

  // Constractor
  Course({
    required this.title,
    required this.id,
  });
  // Methods

  @override
  String toString() {
    return 'title: $title , id: $id';
  }
}
