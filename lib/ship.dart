import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:test1/ship_sprite_sheet.dart';

class GameShip extends SimplePlayer with ObjectCollision, TapGesture
 {
  GameShip(Vector2 position)
      : super(
          size: Vector2(40, 40),
          position: position,
          life: 100,
          speed: 150,
          animation: SimpleDirectionAnimation(
            idleLeft: ShipSpriteSheet.shipIdLeft,
            idleRight: ShipSpriteSheet.shipIdRight,
            runLeft: ShipSpriteSheet.shipRunLeft,
            runRight: ShipSpriteSheet.shipRunRight,
            idleDown: ShipSpriteSheet.shipIdDown,
            runDown: ShipSpriteSheet.shipRunDown,
            idleUp: ShipSpriteSheet.shipIdUp,
            runUp: ShipSpriteSheet.shipRunUp,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(29, 28),
        align: Vector2(3,6),
        ),
    ]));

  }
  void onTap(){
    TalkDialog.show(context, [
      Say(text:[TextSpan(text: 'Ola! sou o navegador Vasco da Gama, me ajude a descobrir novas terras e rotas!'),],person: ShipSpriteSheet.shipIdRight.asWidget()),
    ]);
  }

  @override
  void die(){
    //aleatorio
    int morteDialog = Random().nextInt(5);
    while(morteDialog == 0){
      morteDialog = Random().nextInt(5);
    }

    switch(morteDialog) { 
      case 1: {
          TalkDialog.show(context, [
            Say(text:[TextSpan(text: 'Sabe que quantas naus esta viagem\nQue tu fazes, fizerem, de atrevidas,\nInimiga terão esta paragem,\nCom ventos e tormentas desmedidas!'),],person: ShipSpriteSheet.shipIdRight.asWidget()),
          ]);
        
        } 
      break; 
     
      case 2: {  
          TalkDialog.show(context, [
            Say(text:[TextSpan(text: 'Porém já cinco sóis eram passados\nQue dali nos partíramos, cortando\nOs mares nunca doutrem navegados,\nProsperamente os ventos assoprando,\nQuando uma noite, estando descuidados\nNa cortadora proa vigiando,\nUma nuvem, que os ares escurece,\nSobre nossas cabeças aparece.'),],person: ShipSpriteSheet.shipIdRight.asWidget()),
          ]); 
        } 
      break; 
     
      case 3: {  
        TalkDialog.show(context, [
          Say(text:[TextSpan(text: 'Caixas podem restaurar o Navio!'),],person: ShipSpriteSheet.shipIdRight.asWidget()),
        ]);
      } 
      break; 
     
      
      default: { 
        TalkDialog.show(context, [
          Say(text:[TextSpan(text: 'Vamos Navegar!'),],person: ShipSpriteSheet.shipIdRight.asWidget()),
        ]);
        } 
      break; 
   } 

    removeFromParent();
    super.die();

    //comando para voltar do 0
    
  }

  @override
  void render(Canvas canvas){
    drawDefaultLifeBar(
      canvas,
      borderWidth: 2,
      height: 2,
      // ignore: prefer_const_constructors
      align: Offset(0, -5),
      );
      super.render(canvas);
  }



}

