

import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:test1/ship_sprite_sheet.dart';
import '../decoration_sprite_sheet.dart';

bool _chegouFinal = false;

class IndiasFinal extends GameDecoration with Sensor{
  IndiasFinal(Vector2 position)
    :super.withSprite(
      sprite: DecorationSpriteSheet.indiasFinal,
      position: position,
      
      //height: 32,
      size: Vector2(50, 50),
  );

  @override
  void onContact(GameComponent component) {
    if(component is SimplePlayer && _chegouFinal == false){
      TalkDialog.show(context, [
      Say(text:[TextSpan(text: 'Parabens!! você chegou as Indias!'),],person: ShipSpriteSheet.shipIdRight.asWidget(),),
    
    ]);
      _chegouFinal = true;
   
    
    }


  }


}