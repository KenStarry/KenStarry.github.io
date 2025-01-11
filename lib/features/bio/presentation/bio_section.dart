import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/features/bio/presentation/components/bio_content.dart';
import 'package:portfolio/features/bio/presentation/components/bio_image.dart';
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
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 136),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 100,
        children: [
          Row(
            children: [
              Expanded(child: BioContent()),
              Expanded(child: BioImage())
            ],
          ),
        ],
      ),
    );
    // return MultiSliver(children: [
    //   SliverToBoxAdapter(
    //     child: Container(
    //       width: double.infinity,
    //       padding: const EdgeInsets.symmetric(vertical: 100),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         spacing: 100,
    //         children: [
    //           Row(
    //             children: [
    //               Expanded(child: BioContent()),
    //               Expanded(child: BioImage())
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   )
    // ]);
  }
}
