import 'package:flutter/material.dart';
import 'package:marvel_characters/models/character.dart';
import 'package:marvel_characters/services/character_service.dart';
import 'package:marvel_characters/widgets/character_item_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: ListView.builder(
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return CharacterItemWidget(character: characters[index]);
          }),
    );
  }
}
