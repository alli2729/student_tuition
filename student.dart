class Student {
  // Variable
  final String name;
  final int id;

  // Constractor
  Student({required this.name, required this.id});

  // Methods
  @override
  String toString() {
    return 'name: $name , id: $id';
  }
}
