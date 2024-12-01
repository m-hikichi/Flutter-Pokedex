
class Pokemon {
  final int id;
  final String name;
  final String genus;
  final String formName;
  final int height;
  final int weight;

  Pokemon(this.id, this.name, this.genus, this.formName, this.height, this.weight);
}

final pokemonList = [
  Pokemon(1, "フシギダネ", "たねポケモン", "", 7, 69),
  Pokemon(2, "フシギソウ", "たねポケモン", "", 10, 130),
  Pokemon(3, "フシギバナ", "たねポケモン", "", 20, 1000),
  Pokemon(4, "ヒトカゲ", "とかげポケモン", "", 6, 85),
  Pokemon(5, "リザード", "かえんポケモン", "", 11, 190),
  Pokemon(6, "リザードン", "かえんポケモン", "", 17, 905),
  Pokemon(7, "ゼニガメ", "かめのこポケモン", "", 5, 90),
  Pokemon(8, "カメール", "かめポケモン", "", 10, 225),
  Pokemon(9, "カメックス", "こうらポケモン", "", 16, 855),
];
