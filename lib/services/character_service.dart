import 'package:marvel_characters/models/character.dart';

class CharacterService {
  List<Character> getCharacters() {
    return [
      Character(1, 'Spider-man', 'assets/images/spider-man.png','assets/images/spider-man-banner.jpg'),
      Character(2, 'Thor', 'assets/images/thor.png','assets/images/thor-banner.jpg'),
      Character(3, 'Captain America', 'assets/images/captain-america.png', 'assets/images/captain-america-banner.jpg'),
      Character(4, 'Black Widow', 'assets/images/black-widow.png','assets/images/black-widow-banner.jpg'),
    ];
  }
}
