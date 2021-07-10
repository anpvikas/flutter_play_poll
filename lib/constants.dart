import 'package:flutter/material.dart';

Gradient forContainerLinear = LinearGradient(
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
