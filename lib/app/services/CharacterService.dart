import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'dart:developer';

import '../models/CharacterModel.dart';
class CharacterService{

  String urlGetList = "https://rickandmortyapi.com/api/character";

  dynamic _response;
  ParkingSpotService(){
    _response="";
  }

  Future<dynamic> fetchListCharacter() async {
    _response = await http.get(Uri.parse(urlGetList));
    if (_response.statusCode == 200) {
       //Map<String, dynamic> retorno = json.decode(_response.body);
      //print(retorno);

      var list = json.decode(_response.body);
      List<CharacterModel> listCharacterModel = [];
      for (var item in list["results"]) {
        listCharacterModel.add((CharacterModel.fromJson(item)));
      }

      //return ParkingSpotList.fromJson(list);
      return listCharacterModel;
    } else {
      throw Exception('Failed to load cote');
    }
  }


}
