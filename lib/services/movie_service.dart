import 'package:marvel_characters/models/movie.dart';

class MovieService {

  List<Movie> movies = [
    Movie(1, 'Spider-man: Homecomming', 7.4),
    Movie(2, 'Blackwidow', 6.5),
    Movie(3, 'Captain America: Civil War', 8),
    Movie(4, 'Spider-man: No Way Home', 9),
    Movie(5, 'Spider-man: Far From Home', 7),
    Movie(6, 'Captain America: The First Avenger', 7),
    Movie(7, 'Thor', 8),
    Movie(8, 'Thor: Ragnarok', 7.8),
    Movie(9, 'Thor: The Dark World', 8),
    Movie(10, 'Avengers: Endgame', 9),
    Movie(11, 'Avengers: Infinity war', 9),
    Movie(12, 'Avengers', 9),
  ];

  Movie getMovieByID(int id) {
    return movies.firstWhere((element) => element.id == id);
  }
}
