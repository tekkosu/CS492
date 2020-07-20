import 'dart:io';
import 'dart:convert';  //for JSON data handling
import 'package:dart_space_adventure/dart_space_adventure.dart';

//we will need the 'async' command to load the json file
void main(List<String> arguments) async {
  var filePath;
  //read command line argument
  for(String args in arguments){
    filePath = args;
  }
  
  //read file path and decode json data to get the name of the solar system
  var newSystemName = jsonDecode(await (File(filePath)).readAsString())['name'];

  //method to help parse json data
  Planet fromJson(Map<String, dynamic> parsedJson) {
    return Planet(
      name: parsedJson["name"], 
      description: parsedJson["description"]);
  }
  //read file path to json file, decode json data, conver to List
  var newPlanets = jsonDecode(await (File(filePath)).readAsString())['planets'] as List;;
  //create new Planet List by deserializing the decoded json data 
  List<Planet> mockPlanets = newPlanets.map((entry) => fromJson(entry)).toList();
  //code above was created with help from https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51
  
  //start Space Adventure!
  SpaceAdventure(
    planetarySystem:
      PlanetarySystem(
        name: newSystemName, 
        planets: mockPlanets
      )
  ).start();
}




