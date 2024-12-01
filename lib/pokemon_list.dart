import 'package:flutter/material.dart';
import 'package:pokedex/colors.dart';
import 'package:pokedex/pokemon.dart';

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
    child: Row(
      children: [
        Text(
          pokemon.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    ),
  );
}
