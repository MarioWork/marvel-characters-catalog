import 'package:flutter/material.dart';
import 'package:marvel_characters/models/character.dart';
import 'package:marvel_characters/screens/details_screen.dart';

class CharacterItemWidget extends StatelessWidget {
  final Character character;

  const CharacterItemWidget({required this.character, Key? key}) : super(key: key);

  void _onItemPressed(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsScreen(
                  character: character,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onItemPressed(context),
      child: SizedBox(
        height: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 2,
          child: Image.asset(
            character.imageResource,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
