import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../theme/colors.dart';

class BioContent extends StatefulWidget {
  const BioContent({super.key});

  @override
  State<BioContent> createState() => _BioContentState();
}

class _BioContentState extends State<BioContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Theme.of(context).colorScheme.primary,
                child: Text("Mobile Developer",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.titleLarge!.fontWeight,
                      color: blackColor,
                    )),
              )
                  .animate(autoPlay: true)
                  .fadeIn(
                      delay: Duration(milliseconds: 1000),
                      duration: Duration(milliseconds: 300))
                  .moveX(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease),
              Text(
                "Turning ‘what if?’\ninto ‘it works!’",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight:
                      Theme.of(context).textTheme.bodyMedium!.fontWeight,
                  color: Theme.of(context).textTheme.titleLarge!.color,
                ),
                textAlign: TextAlign.start,
              )
                  .animate(autoPlay: true)
                  .fadeIn(
                      delay: Duration(milliseconds: 1200),
                      duration: Duration(milliseconds: 300))
                  .moveX(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease),
              Text(
                "(usually on the second try).",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight,
                  color: whiteColor2.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.start,
              )
                  .animate(autoPlay: true)
                  .fadeIn(
                      delay: Duration(milliseconds: 1400),
                      duration: Duration(milliseconds: 300))
                  .moveX(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease),
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
                  .animate(autoPlay: true)
                  .fadeIn(
                      delay: Duration(milliseconds: 1600),
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
                      fontWeight:
                          Theme.of(context).textTheme.titleLarge!.fontWeight,
                      color: whiteColor,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text("YEARS",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontWeight,
                          color: whiteColor2.withValues(alpha: 0.7),
                        )),
                    Text("EXPERIENCE",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontWeight,
                          color: whiteColor2.withValues(alpha: 0.7),
                        )),
                  ],
                )
              ],
            )
                .animate(autoPlay: true)
                .fadeIn(
                    delay: Duration(milliseconds: 1400),
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
                      fontWeight:
                          Theme.of(context).textTheme.titleLarge!.fontWeight,
                      color: whiteColor,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text("PROJECTS",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontWeight,
                          color: whiteColor2.withValues(alpha: 0.7),
                        )),
                    Text("BUILT & DEPLOYED",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontWeight,
                          color: whiteColor2.withValues(alpha: 0.7),
                        )),
                  ],
                )
              ],
            )
                .animate(autoPlay: true)
                .fadeIn(
                    delay: Duration(milliseconds: 1600),
                    duration: Duration(milliseconds: 300))
                .moveY(
                    begin: 30,
                    end: 0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease),
          ],
        )
      ],
    );
  }
}
