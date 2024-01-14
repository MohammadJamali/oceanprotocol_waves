library oceanprotocol_wave;

import 'package:flutter/material.dart';

import 'oceanprotocol_waves_painter.dart';

class OceanProtocolWaves extends StatefulWidget {
  const OceanProtocolWaves({
    super.key,
    this.height,
    this.width,
    this.colors = const [
      Color.fromRGBO(158, 158, 158, 0.5),
      Color.fromRGBO(33, 150, 243, 0.7),
      Color.fromRGBO(156, 39, 176, 0.9),
      Colors.pink,
    ],
  });

  final List<Color> colors;
  final double? width;
  final double? height;

  @override
  OceanProtocolWavesState createState() => OceanProtocolWavesState();
}

class OceanProtocolWavesState extends State<OceanProtocolWaves>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double time = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 250),
      lowerBound: 30,
      upperBound: 180,
    )..repeat();

    _controller.addListener(onTimePassed);
  }

  void onTimePassed() {
    setState(() {
      time = _controller.value;
    });
  }

  @override
  void dispose() {
    _controller.removeListener(onTimePassed);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: CustomPaint(
        painter: OceanProtocolWavesPainter(
          time: time,
          colors: widget.colors,
        ),
      ),
    );
  }
}
