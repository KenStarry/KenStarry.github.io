import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String imageAsset;
  final List<String> techStacks;
  final List<Color> bgColors;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.imageAsset,
      required this.techStacks,
      required this.bgColors});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.bgColors)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              spacing: 32,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 24,
                  children: [
                    Expanded(
                        child: Text(widget.title,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontSize,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontWeight,
                              color: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .color,
                            ))),
                    Row(
                      spacing: 12,
                      children: widget.techStacks
                          .map((stack) => Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                color: Theme.of(context).colorScheme.onPrimary,
                                child: Text(stack,
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 180,
              left: 80,
              child: Transform.rotate(angle: 0 / 360,
              child: UnconstrainedBox(
                child: Container(
                    width: 350,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(widget.imageAsset,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover))),
              )))
        ],
      ),
    );
  }
}
