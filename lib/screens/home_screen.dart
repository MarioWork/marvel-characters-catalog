import 'package:flutter/material.dart';
import 'package:marvel_characters/models/character.dart';
import 'package:marvel_characters/screens/details_screen.dart';
import 'package:marvel_characters/services/character_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marvel Characters'),
      ),
      body: HomeScreenBody(),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final List<Character> characters = CharacterService().getCharacters();

  HomeScreenBody({Key? key}) : super(key: key);

  void _onItemPressed(Character character, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsScreen(
                  character: character,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: ListView.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _onItemPressed(characters[index], context),
              child: SizedBox(
                height: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                  child: Image.asset(
                    characters[index].imageResource,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
