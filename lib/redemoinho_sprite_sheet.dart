import 'package:bonfire/bonfire.dart';

class RedemoinhoSpriteSheet {
  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get RedemoinhoIdLeft => SpriteAnimation.load(
        'redemoinho.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(153, 164),
          texturePosition: Vector2(0, 0),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get RedemoinhoIdRight => SpriteAnimation.load(
        'redemoinho.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(153, 164),
          texturePosition: Vector2(0, 0),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get RedemoinhoRunRight => SpriteAnimation.load(
        'redemoinho.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(153, 164),
          texturePosition: Vector2(0, 0),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get RedemoinhoRunLeft => SpriteAnimation.load(
        'redemoinho.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(153, 164),
          texturePosition: Vector2(0, 0),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );
}
