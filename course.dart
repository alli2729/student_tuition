abstract class Course {
  // Variables
  String title;
  int id;

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
