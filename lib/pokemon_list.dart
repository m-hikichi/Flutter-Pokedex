import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key, required this.pokemonList});

  final List<Pokemon> pokemonList;

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GridView.builder(
        itemCount: widget.pokemonList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
        ),
        itemBuilder: (context, index) =>
            pokemonIndex(widget.pokemonList[index]),
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
      color: pokemon.type1Color,
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
            style: GoogleFonts.delaGothicOne(
              textStyle: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ],
    ),
  );
}
