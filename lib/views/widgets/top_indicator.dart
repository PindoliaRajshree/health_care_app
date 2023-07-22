import 'package:flutter/material.dart';

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return TopIndicatorBox();
  }
}

class TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint()
      ..color = Color.fromRGBO(89, 139, 237, 1)
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(
        offset, Offset(configuration.size!.width + offset.dx, 0), paint);
  }
}
