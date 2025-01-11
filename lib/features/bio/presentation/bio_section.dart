import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:sliver_tools/sliver_tools.dart';

class BioSection extends StatefulWidget {
  const BioSection({super.key});

  @override
  State<BioSection> createState() => _BioSectionState();
}

class _BioSectionState extends State<BioSection> {
  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                spacing: 80,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    color: Theme.of(context).colorScheme.primary,
                    child: Text("Mobile Developer",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .fontWeight,
                          color: blackColor,
                        )),
                  ),
                  Text(
                    "Code is my craft,\nsolving problems is my art.",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight:
                          Theme.of(context).textTheme.bodyMedium!.fontWeight,
                      color: Theme.of(context).textTheme.titleLarge!.color,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "I write code that even my future self understands… most of the time.😅",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodySmall!.fontWeight,
                      color: whiteColor1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        "LET'S CHAT",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor:
                                Theme.of(context).colorScheme.primary),
                      ))
                ],
              )),
              Expanded(
                  child: Stack(
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

                  Container(
                      width: double.infinity,
                      height: 500,
                      child: Stack(
                        children: [
                          Image.asset('assets/images/me.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.contain),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0),
                                    Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.2),
                                    Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.4),
                                    Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.6),
                                    Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.8),
                                    Theme.of(context).colorScheme.onPrimary,
                                  ])),
                            ),
                          )
                        ],
                      )),

                  Positioned(
                    left: 400,
                    right: 0,
                    top: 300,
                    bottom: 0,
                    child: UnconstrainedBox(
                      child: Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSecondary,
                            shape: BoxShape.circle),
                        child: Image.asset('assets/images/flutter.png',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain),
                      ),
                    )
                        .animate(
                            autoPlay: true,
                            onPlay: (controller) =>
                                controller.repeat(reverse: true))
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
                      child: Container(
                        width: 80,
                        height: 80,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSecondary,
                            shape: BoxShape.circle),
                        child: Image.asset('assets/images/kotlin.png',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain),
                      ),
                    )
                        .animate(
                            autoPlay: true,
                            onPlay: (controller) =>
                                controller.repeat(reverse: true))
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
                            onPlay: (controller) =>
                                controller.repeat(reverse: true))
                        .scale(
                            duration: Duration(seconds: 1),
                            begin: Offset(1, 1),
                            end: Offset(1.1, 1.1)),
                  ),
                ],
              ))
            ],
          ),
        ),
      )
    ]);
  }
}
