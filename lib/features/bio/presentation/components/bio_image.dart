import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BioImage extends StatefulWidget {
  const BioImage({super.key});

  @override
  State<BioImage> createState() => _BioImageState();
}

class _BioImageState extends State<BioImage> {
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
          ),
        ),

        SizedBox(
            width: double.infinity,
            height: 600,
            child: Stack(
              children: [
                Image.asset('assets/images/me.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     width: double.infinity,
                //     height: 100,
                //     decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //             begin: Alignment.topCenter,
                //             end: Alignment.bottomCenter,
                //             colors: [
                //           Theme.of(context)
                //               .colorScheme
                //               .onPrimary
                //               .withValues(alpha: 0),
                //           Theme.of(context)
                //               .colorScheme
                //               .onPrimary
                //               .withValues(alpha: 0.2),
                //           Theme.of(context)
                //               .colorScheme
                //               .onPrimary
                //               .withValues(alpha: 0.4),
                //           Theme.of(context)
                //               .colorScheme
                //               .onPrimary
                //               .withValues(alpha: 0.6),
                //           Theme.of(context)
                //               .colorScheme
                //               .onPrimary
                //               .withValues(alpha: 0.8),
                //           Theme.of(context).colorScheme.onPrimary,
                //         ])),
                //   ),
                // )
              ],
            )),

        Positioned(
          left: 400,
          right: 0,
          top: 300,
          bottom: 0,
          child: UnconstrainedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 120,
                  height: 120,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withValues(alpha: 0.3),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/flutter.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain),
                ),
              ),
            ),
          )
              .animate(
                  autoPlay: true,
                  onPlay: (controller) => controller.repeat(reverse: true))
              .scale(
                  duration: Duration(seconds: 1),
                  begin: Offset(1, 1),
                  end: Offset(1.1, 1.1)),
        ),
        Positioned(
          left: 0,
          right: 450,
          top: 150,
          bottom: 0,
          child: UnconstrainedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 80,
                  height: 80,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onSecondary
                          .withValues(alpha: 0.3),
                      shape: BoxShape.circle),
                  child: Image.asset('assets/images/kotlin.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain),
                ),
              ),
            ),
          )
              .animate(
                  autoPlay: true,
                  onPlay: (controller) => controller.repeat(reverse: true))
              .scale(
                  duration: Duration(seconds: 1),
                  begin: Offset(1, 1),
                  end: Offset(1.1, 1.1)),
        ),
        Positioned(
          left: 450,
          right: 0,
          top: 0,
          bottom: 200,
          child: UnconstrainedBox(
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  shape: BoxShape.circle),
              child: Image.asset('assets/images/firebase.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.contain),
            ),
          )
              .animate(
                  autoPlay: true,
                  onPlay: (controller) => controller.repeat(reverse: true))
              .scale(
                  duration: Duration(seconds: 1),
                  begin: Offset(1, 1),
                  end: Offset(1.1, 1.1)),
        ),
      ],
    );
  }
}
