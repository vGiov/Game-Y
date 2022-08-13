import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:test1/ship.dart';

final double tilesize = 32;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(directional: JoystickDirectional()),
      map: TiledWorldMap(
        'map/caminho1.json',
        forceTileSize: Size(tilesize, tilesize),
      ),
      player: GameShip(
        Vector2(12 * tilesize, 12 * tilesize),
      ),
      //showCollisionArea: true,
    );
  }
}
