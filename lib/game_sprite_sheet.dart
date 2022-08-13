import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get shipIdLeft => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(79, 80),
          texturePosition: Vector2(0, 120),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get shipIdRight => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          // textureSize: Vector2(80, 96),
          textureSize: Vector2(79, 80),
          texturePosition: Vector2(0, 212),
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get shipRunRight => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(79, 80), //24x24
          texturePosition: Vector2(0, 212),
        ),
      );

  static Future<SpriteAnimation> get shipRunLeft => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(79, 80),
          texturePosition: Vector2(0, 120),
        ),
      );

  static Future<SpriteAnimation> get shipIdDown => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(80, 96),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get shipRunDown => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(80, 96),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get shipRunUp => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(80, 96),
          texturePosition: Vector2(0, 287),
        ),
      );

  static Future<SpriteAnimation> get shipIdUp => SpriteAnimation.load(
        'shipT.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 4, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(80, 96),
          texturePosition: Vector2(0, 287),
        ),
      );
}
