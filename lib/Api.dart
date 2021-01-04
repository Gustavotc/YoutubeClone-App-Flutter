import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyA57wotgzuk_86SzLHZLToO4cjCZHLo-34";
const ID_CANAL = "UCUsi45e2azhewoZgIj-3Qzg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {

  pesquisar(String pesquisa) async {

    http.Response response = await http.get(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&q=$pesquisa"
    );

    if(response.statusCode == 200) {

      Map<String, dynamic> dadosJson = json.decode( response.body );
      print("resultado: " + dadosJson["items"].toString() );

    } else {

    }

  }

}