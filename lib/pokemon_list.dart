import 'package:flutter/material.dart';
import 'package:pokedex/colors.dart';
import 'package:pokedex/pokemon.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GridView.builder(
        itemCount: pokemonList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
        ),
        itemBuilder: (context, index) => pokemonIndex(pokemonList[index]),
      ),
    );
  }
}

Widget pokemonIndex(Pokemon pokemon) {
  return Container(
    height: 100,
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: normalTypeColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Stack(
            children: [
              Image.asset(
                "images/pokeball-icon-transparent.jpg",
                opacity: const AlwaysStoppedAnimation(0.2),
              ),
              Image.asset("images/${pokemon.id}.png"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            pokemon.name,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ],
    ),
  );
}
