import 'dart:math';
import 'planet.dart';

class PlanetarySystem {
  final Random _random = Random();
  final String name;

  final List<Planet> planets;
  // PlanetarySystem() : name = "Unnamed System";
  // PlanetarySystem.withName(this.name); //initializing formal

  PlanetarySystem(
      {this.name = "Unnamed System",
      this.planets = const []}); //initializing formal with constant list

  int get numberOfPLanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;
  Planet randomPlanet(){
    if(!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }

  Planet planetWithName(String name) {
    return planets.firstWhere(
      (planet) => planet.name == name, 
      orElse: () => Planet.nullPlanet()
    );
  }
}
