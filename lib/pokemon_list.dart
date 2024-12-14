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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name,
                style: GoogleFonts.delaGothicOne(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                width: 90,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(128, 128, 128, 128),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  pokemon.type1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              pokemon.type2 != null
                  ? Container(
                      width: 90,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(128, 128, 128, 128),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        pokemon.type2 ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    ),
  );
}
