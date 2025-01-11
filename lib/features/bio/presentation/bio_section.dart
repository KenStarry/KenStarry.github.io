import 'dart:ui';

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
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 100,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 100,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 120),
                        child: Column(
                          spacing: 80,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              color: Theme.of(context).colorScheme.primary,
                              child: Text("Mobile Developer",
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .fontWeight,
                                    color: blackColor,
                                  )),
                            )
                                .animate(autoPlay: true)
                                .fadeIn(
                                    delay: Duration(milliseconds: 500),
                                    duration: Duration(milliseconds: 300))
                                .moveX(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease),
                            Text(
                              "Turning ‘what if?’\ninto ‘it works!’",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                color: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .color,
                              ),
                              textAlign: TextAlign.start,
                            )
                                .animate(autoPlay: true)
                                .fadeIn(
                                    delay: Duration(milliseconds: 700),
                                    duration: Duration(milliseconds: 300))
                                .moveX(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease),
                            Text(
                              "(well...usually on the second try).",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontWeight,
                                color: whiteColor2.withValues(alpha: 0.7),
                              ),
                              textAlign: TextAlign.start,
                            )
                                .animate(autoPlay: true)
                                .fadeIn(
                                    delay: Duration(milliseconds: 900),
                                    duration: Duration(milliseconds: 300))
                                .moveX(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease),
                            TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    child: Text(
                                      "LET'S CHAT",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ))
                                .animate(autoPlay: true)
                                .fadeIn(
                                    delay: Duration(milliseconds: 1100),
                                    duration: Duration(milliseconds: 300))
                                .moveY(
                                    begin: -30,
                                    end: 0,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 100,
                        children: [
                          Row(
                            spacing: 16,
                            children: [
                              Text("4+",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .fontWeight,
                                    color: whiteColor,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Text("YEARS",
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontSize,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontWeight,
                                        color:
                                            whiteColor2.withValues(alpha: 0.7),
                                      )),
                                  Text("EXPERIENCE",
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontSize,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontWeight,
                                        color:
                                            whiteColor2.withValues(alpha: 0.7),
                                      )),
                                ],
                              )
                            ],
                          ).animate(autoPlay: true)
                              .fadeIn(
                              delay: Duration(milliseconds: 1300),
                              duration: Duration(milliseconds: 300))
                              .moveY(
                              begin: 30,
                              end: 0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease),
                          Row(
                            spacing: 16,
                            children: [
                              Text("12",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .fontWeight,
                                    color: whiteColor,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Text("PROJECTS",
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontSize,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontWeight,
                                        color:
                                            whiteColor2.withValues(alpha: 0.7),
                                      )),
                                  Text("BUILT & DEPLOYED",
                                      style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontSize,
                                        fontWeight: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .fontWeight,
                                        color:
                                            whiteColor2.withValues(alpha: 0.7),
                                      )),
                                ],
                              )
                            ],
                          ).animate(autoPlay: true)
                              .fadeIn(
                              delay: Duration(milliseconds: 1500),
                              duration: Duration(milliseconds: 300))
                              .moveY(
                              begin: 30,
                              end: 0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease),
                        ],
                      )
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
                                    color:
                                        Theme.of(context).colorScheme.onSecondary.withValues(alpha: 0.3),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                    color:
                                    Theme.of(context).colorScheme.onSecondary.withValues(alpha: 0.3),
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
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
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
            ],
          ),
        ),
      )
    ]);
  }
}
