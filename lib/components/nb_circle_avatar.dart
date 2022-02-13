import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class NbCircle extends StatelessWidget {
  final double? radius;
  final ImageProvider? backgroundImage;
  const NbCircle({Key? key, this.radius, this.backgroundImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.00),
        child: CircularPercentIndicator(
          radius: 88.0,
          lineWidth: 5.0,
          animation: true,
          percent: 0.7,
          center: CircleAvatar(
            radius: radius ?? 37.00,
            child: CircleAvatar(
              radius: radius ?? 35.00,
              backgroundImage: backgroundImage ?? const AssetImage(
                'assets/img/avatar.png',
              ),
            ),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: const Color(0xFF0D253F),
          backgroundColor: const Color(0xFFF9BE7C),
        ),
    );
  }
}
