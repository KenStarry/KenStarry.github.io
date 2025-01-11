import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BioImage extends StatefulWidget {
  const BioImage({super.key});

  @override
  State<BioImage> createState() => _BioImageState();
}

class _BioImageState extends State<BioImage> {
  Widget _skillCircle(String asset,
          {double top = 0,
          double left = 0,
          double bottom = 0,
          required double width,
          required double height,
          double right = 0}) =>
      Positioned(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
        child: UnconstrainedBox(
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                shape: BoxShape.circle),
            child: Image.asset('assets/images/$asset.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.contain),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //  background circle
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.onSecondary,
                      Theme.of(context).colorScheme.onPrimary,
                    ])),
          )
              .animate(autoPlay: true, delay: Duration(seconds: 1))
              .fadeIn(duration: Duration(milliseconds: 300))
              .moveX(duration: Duration(milliseconds: 300), begin: 50, end: 0),
        ),

        SizedBox(
                width: double.infinity,
                height: 600,
                child: Image.asset('assets/images/me.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover))
            .animate(autoPlay: true, delay: Duration(seconds: 1))
            .fadeIn(duration: Duration(milliseconds: 300))
            .moveX(duration: Duration(milliseconds: 300), begin: -50, end: 0),

        /// Flutter
        _skillCircle('flutter', width: 120, height: 120, left: 400, top: 300)
            .animate(autoPlay: true, delay: Duration(milliseconds: 1500))
            .fadeIn(duration: Duration(milliseconds: 300))
            .scale(duration: Duration(milliseconds: 300)),

        /// Kotlin
        _skillCircle('kotlin', width: 80, height: 80, right: 450, top: 150)
            .animate(autoPlay: true, delay: Duration(milliseconds: 1300))
            .fadeIn(duration: Duration(milliseconds: 300))
            .scale(duration: Duration(milliseconds: 300)),
        // .animate(
        //     autoPlay: true,
        //     onPlay: (controller) => controller.repeat(reverse: true))
        // .scale(
        //     duration: Duration(seconds: 1),
        //     begin: Offset(1, 1),
        //     end: Offset(1.1, 1.1)),

        /// Firebase
        _skillCircle('firebase', width: 80, height: 80, left: 450, bottom: 200)
            .animate(autoPlay: true, delay: Duration(milliseconds: 1700))
            .fadeIn(duration: Duration(milliseconds: 300))
            .scale(duration: Duration(milliseconds: 300)),
      ],
    );
  }
}
