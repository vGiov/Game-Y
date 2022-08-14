import 'package:bonfire/bonfire.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test1/decorations/chess.dart';
import 'package:test1/decorations/indiasfinal.dart';
import 'package:test1/katrina.dart';
import 'package:test1/redemoinho.dart';
import 'package:test1/ship.dart';
import 'package:test1/turquia.dart';

// ignore: prefer_const_declarations
final double tilesize = 32;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  runApp(const MyApp());}

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
      joystick: 
      Joystick(
        keyboardConfig: KeyboardConfig(
          
        ),
        directional: JoystickDirectional(

        )
      ),


      map: TiledWorldMap(
        'map/caminho1.json',
        objectsBuilder: {
          'katrina':(properties) => Katrina(properties.position),
          'redemoinho':(properties) => Redemoinho(properties.position),
          'turquia':(properties) => Turquia(properties.position),
          'chess':(properties) => Chess(properties.position),
          'indiasFinal':(properties) => IndiasFinal(properties.position),
        },
        forceTileSize: Size(tilesize, tilesize),
      ),
      player: GameShip(
        Vector2(24 * tilesize, 37 * tilesize),
        //Vector2(3 * tilesize, 1 * tilesize),
      ),
      cameraConfig: CameraConfig(
        smoothCameraSpeed: 5,
        smoothCameraEnabled: true,
        moveOnlyMapArea: true,
        zoom: 2,
      ),


      showCollisionArea: true,
      
    );
  }
}
