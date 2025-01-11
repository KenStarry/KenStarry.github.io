import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 100),
          child: Row(
            children: [
              Expanded(child: Column(
                spacing: 40,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    color: Theme.of(context).colorScheme.primary,
                    child: Text("Mobile Developer", style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                      fontWeight: Theme.of(context).textTheme.titleLarge!.fontWeight,
                      color: blackColor,
                    )),
                  ),
                  Text("Code is my craft,\nsolving problems is my art.", style: TextStyle(
                    fontSize: 32,
                    fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
                    color: Theme.of(context).textTheme.titleLarge!.color,
                  ),
                  textAlign: TextAlign.start,),
                  Text("I write code that even my future self understands… most of the time.😅", style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                    fontWeight: Theme.of(context).textTheme.bodySmall!.fontWeight,
                    color: whiteColor1,
                  ),
                    textAlign: TextAlign.start,),
                  
                  TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero
                      ),
                      child: Text("LET'S CHAT", style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Theme.of(context).colorScheme.primary
                  ),))
                ],
              )),
              Expanded(child: Column())
            ],
          ),
        ),
      )
    ]);
  }
}
