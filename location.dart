class Location {
  // Variable
  final String title;
  final int id;

  // Constractor
  Location({required this.title, required this.id});

  // Methods
  @override
  String toString() {
    return 'title: $title , id: $id';
  }
}
