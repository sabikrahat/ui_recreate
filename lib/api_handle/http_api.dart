import 'package:http/http.dart' as http;
import 'package:ui_recreate/api_handle/model/model.dart';

Future<PokemonModel?> fetechData() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var body = await response.stream.bytesToString();
    final pokemonModel = pokemonModelFromJson(body);
    return pokemonModel;
  } else {
    print(response.reasonPhrase);
  }
  return null;
}
