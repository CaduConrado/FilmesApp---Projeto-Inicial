import 'package:flutter/material.dart';

import '../models/movie.dart';
import 'movie_card.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;

  const MovieList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemCount: movies.length,
        itemBuilder: ((context, index) {
          final movie = movies[index];
          return MovieCard(
            image: movie.image,
            name: movie.name,
          );
        }),
      ),
    );
  }
}
