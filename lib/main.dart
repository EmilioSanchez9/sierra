import 'dart:html';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(GameWidget(
    game: MyGame(),
    ));
}

class MyGame extends FlameGame with HasTappables {
  SpriteComponent  sierra = SpriteComponent();

  @override 
  Future<void> onLoad() async{
    super.onLoad();
    sierra
    ..sprite = await loadSprite('sierra.png')
    ..size = Vector2(100,100);
    add(sierra);
  }
}


