
import 'package:bonfire/bonfire.dart';
import '../decoration_sprite_sheet.dart';

class Chess extends GameDecoration{
  Chess(Vector2 position)
    :super.withSprite(
      sprite: DecorationSpriteSheet.chess,
      position: position,
      //width: 16,
      //height: 32,
      size: position,
  );
}