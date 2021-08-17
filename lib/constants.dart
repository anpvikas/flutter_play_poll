import 'package:flutter/material.dart';

BoxShadow boxTopShadow = BoxShadow(
  color: Colors.grey.shade200,
  blurRadius: 1.0, // soften the shadow
  spreadRadius: 1.0, //extend the shadow
  offset: Offset(
    -1.0, // Move to right 10  horizontally
    -1.0, // Move to bottom 10 Vertically
  ),
);

BoxShadow boxBotomShadow = BoxShadow(
  color: Colors.grey.shade400,
  blurRadius: 1.0, // soften the shadow
  spreadRadius: 1.0, //extend the shadow
  offset: Offset(
    1.0, // Move to right 10  horizontally
    1.0, // Move to bottom 10 Vertically
  ),
);

Gradient forContainerLinear_backup = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  // center: Alignment.bottomLeft,
  stops: [0.3, 0.85, 0.95, 1],
  colors: [
    Colors.greenAccent.withOpacity(0.8),
    Colors.orange[100]!.withOpacity(0.6),
    Colors.purple[100]!.withOpacity(0.5),
    Colors.blueAccent[100]!.withOpacity(0.9),
  ],
);

Gradient forContainerLinear = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  // center: Alignment.bottomLeft,
  stops: [0.01, 0.5, 0.8, 1],
  colors: [
    Colors.blueAccent.withOpacity(0.8),
    Colors.grey[100]!.withOpacity(0.6),
    Colors.blueGrey[100]!.withOpacity(0.5),
    Colors.blue[100]!.withOpacity(0.9),
  ],
);

Gradient forPageDesignRadial = RadialGradient(
  radius: 0.8,
  center: Alignment.bottomLeft,
  stops: [0.6, 1, 3, 6],
  colors: [
    Colors.orange.withOpacity(1),
    Colors.orange[100]!.withOpacity(0.6),
    Colors.pink[100]!.withOpacity(0.5),
    Colors.white.withOpacity(0.3),
  ],
);
