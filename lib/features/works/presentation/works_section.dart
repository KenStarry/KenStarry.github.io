import 'package:flutter/material.dart';

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
        spacing: 50,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Latest works title
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                          fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight,
                          color: whiteColor2.withValues(alpha: 0.7),
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),

          Expanded(
              child: Container(
            width: double.infinity,
            color: Colors.green,
          )),
        ],
      ),
    );
  }
}
