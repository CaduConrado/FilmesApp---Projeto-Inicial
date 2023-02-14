import 'package:filmes_app/components/movie_list.dart';
import 'package:filmes_app/models/movie.dart';
import 'package:filmes_app/repositories/repository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Movie>>? futureMovies;
  @override
  void initState() {
    futureMovies = getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes Otaku'),
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: futureMovies,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final movies = snapshot.data as List<Movie>;
              return MovieList(movies: movies);
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
