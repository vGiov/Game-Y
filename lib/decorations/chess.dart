

import 'package:bonfire/bonfire.dart';
import '../decoration_sprite_sheet.dart';



class Chess extends GameDecoration with Sensor{
  Chess(Vector2 position)
    :super.withSprite(
      sprite: DecorationSpriteSheet.chess,
      position: position,
      
      //height: 32,
      size: Vector2(16, 32),
  );

  @override
  void onContact(GameComponent component) {
    if(component is SimplePlayer){
      
      (component).addLife(60);
      removeFromParent();
    }


  }


}