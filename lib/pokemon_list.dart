import 'package:flutter/material.dart';
import 'package:pokedex/colors.dart';
import 'package:pokedex/pokemon.dart';

const displayDigits = 3;

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: pokemonList.length,
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
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "No.${pokemon.id.toString().padLeft(displayDigits, "0")}",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                pokemon.name,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
