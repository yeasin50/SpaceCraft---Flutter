import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spaceCraft/GameManager/playerManager.dart';

class HeaderLive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerManager>(
      builder: (context, value, child) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: buildLives(value),
      ),
    );
  }

  Row buildLives(var data) {
    List<Icon> icons = [];

    for (int i = 0; i < data.live; i++) {
      icons.add(Icon(
        Icons.favorite,
        color: Colors.red,
      ));
    }

    for (int i = data.maxLive - data.live; i > 0; i--) {
      icons.add(Icon(
        Icons.favorite,
        color: Colors.black12,
      ));
    }
    return Row(
      children: icons,
    );
  }
}
