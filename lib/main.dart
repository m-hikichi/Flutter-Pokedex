import 'package:flutter/material.dart';
import 'package:pokedex/colors.dart';
import 'package:pokedex/pokemon_list.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ポケモン図鑑",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ポケモン図鑑", style: TextStyle(color: Colors.white)),
            backgroundColor: PokemonRed,
          ),
          body: const PokemonList()),
    );
  }
}
