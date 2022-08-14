import 'package:bonfire/bonfire.dart';

class TurquiaSpriteSheet {
  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaIdLeft => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 471),
          texturePosition: Vector2(0, 616),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );






  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaIdRight => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 457),
          texturePosition: Vector2(0, 1087),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaRunRight => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 457),
          texturePosition: Vector2(0, 1087),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaRunLeft => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 471),
          texturePosition: Vector2(0, 616),






          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

    // ignore: non_constant_identifier_names
    static Future<SpriteAnimation> get TurquiaIdDown => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 538),
          texturePosition: Vector2(0, 0),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaRunDown => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 538),
          texturePosition: Vector2(0, 0),
        ),
      );




  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaRunUp => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 504),
          texturePosition: Vector2(0, 1543),
        ),
      );

  // ignore: non_constant_identifier_names
  static Future<SpriteAnimation> get TurquiaIdUp => SpriteAnimation.load(
        'turquia.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(554, 504),
          texturePosition: Vector2(0, 1543),
        ),
      );

}
