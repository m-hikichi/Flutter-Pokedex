class Pokemon {
  final int id;
  final String name;
  final String genus;
  final String formName;
  final int height;
  final int weight;

  Pokemon(
    this.id,
    this.name,
    this.genus,
    this.formName,
    this.height,
    this.weight,
  );

  @override
  String toString() {
    return "No.$id $name";
  }
}
