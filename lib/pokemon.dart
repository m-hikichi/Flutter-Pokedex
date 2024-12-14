import 'package:flutter/material.dart';
import 'package:pokedex/colors.dart';

class Pokemon {
  final int id;
  final String name;
  final String genus;
  final String formName;
  final int height;
  final int weight;
  late final String type1;
  late final String? type2;

  // Map to retrieve type names from type IDs
  static const Map<int, String> typeMap = {
    1: "ノーマル",
    2: "かくとう",
    3: "ひこう",
    4: "どく",
    5: "じめん",
    6: "いわ",
    7: "むし",
    8: "ゴースト",
    9: "はがね",
    10: "ほのお",
    11: "みず",
    12: "くさ",
    13: "でんき",
    14: "エスパー",
    15: "こおり",
    16: "ドラゴン",
    17: "あく",
    18: "フェアリー",
    19: "ステラ",
  };

  // タイプ名に対応する色のマップ
  static const Map<String, Color> typeColorMap = {
    "ノーマル": normalTypeColor,
    "かくとう": fightingTypeColor,
    "ひこう": flyingTypeColor,
    "どく": poisonTypeColor,
    "じめん": groundTypeColor,
    "いわ": rockTypeLightColor,
    "むし": bugTypeColor,
    "ゴースト": ghostTypeColor,
    "はがね": steelTypeColor,
    "ほのお": fireTypeColor,
    "みず": waterTypeColor,
    "くさ": grassTypeColor,
    "でんき": electricTypeColor,
    "エスパー": psychicTypeColor,
    "こおり": iceTypeColor,
    "ドラゴン": dragonTypeColor,
    "あく": darkTypeColor,
    "フェアリー": fairyTypeColor,
    "ステラ": stellarTypeColor,
    "Unknown": normalTypeColor, // For invalid type names
  };

  // Map to associate type names with colors
  Pokemon(this.id, this.name, this.genus, this.formName, this.height,
      this.weight, int type1ID,
      [int? type2ID]) {
    type1 = typeMap[type1ID] ?? "Unknown";
    type2 = type2ID != null ? (typeMap[type2ID] ?? "Unknown") : null;
  }

  // Method to get the color corresponding to type1
  Color get type1Color => typeColorMap[type1] ?? Colors.grey;
  // Method to get the color corresponding to type2 (optional)
  Color? get type2Color =>
      type2 != null ? (typeColorMap[type2!] ?? Colors.grey) : null;

  @override
  String toString() {
    return "No.$id $name";
  }
}
