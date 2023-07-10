import 'package:tv_show_app/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => character.fromJason(character))
        .toList();
  }
}
