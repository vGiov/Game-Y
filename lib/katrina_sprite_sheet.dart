import 'package:bonfire/bonfire.dart';

class KatrinaSpriteSheet {
  static Future<SpriteAnimation> get katrinaIdLeft => SpriteAnimation.load(
        'katrina.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(114, 141),
          texturePosition: Vector2(17, 0),
          //24x24
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get katrinaIdRight => SpriteAnimation.load(
        'katrina.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          // textureSize: Vector2(80, 96),
          textureSize: Vector2(113, 119),
          texturePosition: Vector2(21, 149),
          //textureSize: Vector2(24, 24), //24x24
          //texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get katrinaRunRight => SpriteAnimation.load(
        'katrina.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(113, 119),
          texturePosition: Vector2(21, 149),
        ),
      );

  static Future<SpriteAnimation> get katrinaRunLeft => SpriteAnimation.load(
        'katrina.png', //caminho png ship
        SpriteAnimationData.sequenced(
          amount: 3, //quantidade de frames
          stepTime: 0.2,
          textureSize: Vector2(114, 141),
          texturePosition: Vector2(17, 0),
        ),
      );
}
