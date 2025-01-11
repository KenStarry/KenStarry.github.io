import 'package:flutter/material.dart';
import 'package:portfolio/features/works/presentation/components/project_card.dart';

import '../../../theme/colors.dart';

class WorksSection extends StatefulWidget {
  const WorksSection({super.key});

  @override
  State<WorksSection> createState() => _WorksSectionState();
}

class _WorksSectionState extends State<WorksSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 800,
      padding: const EdgeInsets.symmetric(horizontal: 136, vertical: 100),
      color: Theme.of(context).colorScheme.onSecondary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Latest works title
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 80,
            children: [
              // title
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Latest Works",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                            Theme.of(context).textTheme.bodyMedium!.fontWeight,
                        color: Theme.of(context).textTheme.titleLarge!.color,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Where creativity meets functionality (and a little chaos).",
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.bodySmall!.fontWeight,
                        color: whiteColor2.withValues(alpha: 0.7),
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),

              //  project card
              ProjectCard(
                  title: "Britam App (Android)",
                  imageAsset: 'assets/images/proj-3.png',
                  techStacks: [
                    'Flutter'
                  ],
                  bgColors: [
                    Theme.of(context).colorScheme.onPrimary,
                    Theme.of(context).colorScheme.onSecondary
                  ]),

              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      "ALL PROJECTS",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).colorScheme.primary,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2,
                        fontSize:
                            Theme.of(context).textTheme.titleSmall!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.bodySmall!.fontWeight,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )),
              ),

              //  Disclaimer
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text:
                        "* Some projects cannot be published due to Policy restrictions.\nIf you want to see more, ",
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodySmall!.fontWeight,
                      color: whiteColor2.withValues(alpha: 0.7),
                    ),
                  ),
                  TextSpan(
                    text: "Contact me",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Theme.of(context).colorScheme.primary,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: 2,
                      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodySmall!.fontWeight,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ])),
              )
              // Padding(
              //   padding: const EdgeInsets.only(left: 120.0),
              //   child: Text(
              //     "* Some projects cannot be published due to Policy restrictions.",
              //     style: TextStyle(
              //       fontSize:
              //       Theme.of(context).textTheme.bodySmall!.fontSize,
              //       fontWeight:
              //       Theme.of(context).textTheme.bodySmall!.fontWeight,
              //       color: whiteColor2.withValues(alpha: 0.7),
              //     ),
              //   ),
              // )
            ],
          )),

          Expanded(
              child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 80,
              children: [
                ProjectCard(
                    title: "Britam App (IOS)",
                    imageAsset: 'assets/images/proj-1.png',
                    techStacks: [
                      'Flutter'
                    ],
                    bgColors: [
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.onSecondary
                    ]),
                ProjectCard(
                    title: "Britam Customer Portal",
                    imageAsset: 'assets/images/proj-2.png',
                    techStacks: [
                      'Flutter'
                    ],
                    bgColors: [
                      Theme.of(context).colorScheme.onPrimary,
                      Theme.of(context).colorScheme.onSecondary
                    ])
              ],
            ),
          )),
        ],
      ),
    );
  }
}
