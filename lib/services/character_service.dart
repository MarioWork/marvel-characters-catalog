import 'package:marvel_characters/models/character.dart';
import 'package:marvel_characters/services/movie_service.dart';

class CharacterService {
  List<Character> getCharacters() {
    return [
      Character(1, 'Spider-man', 'assets/images/spider-man.png',
          'assets/images/spider-man-banner.jpg', [
        MovieService().getMovieByID(1),
        MovieService().getMovieByID(3),
        MovieService().getMovieByID(4),
        MovieService().getMovieByID(5),
        MovieService().getMovieByID(11),
        MovieService().getMovieByID(10),
      ]),
      Character(2, 'Thor', 'assets/images/thor.png',
          'assets/images/thor-banner.jpg', [
        MovieService().getMovieByID(7),
        MovieService().getMovieByID(8),
        MovieService().getMovieByID(9),
        MovieService().getMovieByID(10),
        MovieService().getMovieByID(11),
        MovieService().getMovieByID(12),
      ]),
      Character(3, 'Captain America', 'assets/images/captain-america.png',
          'assets/images/captain-america-banner.jpg', [
        MovieService().getMovieByID(3),
        MovieService().getMovieByID(6),
        MovieService().getMovieByID(10),
        MovieService().getMovieByID(11),
        MovieService().getMovieByID(12),
      ]),
      Character(4, 'Black Widow', 'assets/images/black-widow.png',
          'assets/images/black-widow-banner.jpg', [
        MovieService().getMovieByID(2),
        MovieService().getMovieByID(3),
        MovieService().getMovieByID(10),
        MovieService().getMovieByID(11),
        MovieService().getMovieByID(12),
      ])
    ];
  }
}
