import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_characters/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;

  const DetailsScreen({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailsScreenBody(character: character),
    );
  }
}

class DetailsScreenBody extends StatelessWidget {
  final Character character;

  const DetailsScreenBody({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  character.bannerResource,
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(character.name,
                  style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
            ),
            const Divider(thickness: 2),
          ],
        ),
      ),
    );
  }
}
