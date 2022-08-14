import 'package:bonfire/bonfire.dart';

class DecorationSpriteSheet{
  static Future<Sprite> get chess => Sprite.load(
    'map/forestDecoration_0.png',
    srcPosition: Vector2(32, 96),
    srcSize: Vector2(16, 32),
  );
  static Future<Sprite> get indiasFinal => Sprite.load(
    'indiasF.png',
    srcPosition: Vector2(163, 61),
    srcSize: Vector2(337, 108),
  );
}