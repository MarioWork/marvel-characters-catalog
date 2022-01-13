import 'movie.dart';

class Character {

  int id;
  String name;
  String imageResource;
  String bannerResource;
  List<Movie> movies;

  Character(this.id, this.name, this.imageResource, this.bannerResource, this.movies);
}
