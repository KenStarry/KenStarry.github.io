import 'package:flutter/material.dart';
import 'package:portfolio/features/bio/presentation/bio_section.dart';
import 'package:portfolio/features/home/presentation/components/home_appbar.dart';

import '../model/appbar_link_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String activeLink = 'Home';

  late final List<AppbarLinkModel> _links;
  late final List<AppbarLinkModel> _socials;

  @override
  void initState() {
    super.initState();

    _links = [
      AppbarLinkModel(title: 'Home', asset: 'assets/images/home.svg'),
      AppbarLinkModel(title: 'Skills', asset: 'assets/images/skills.svg'),
      AppbarLinkModel(title: 'Works', asset: 'assets/images/works.svg'),
    ];

    _socials = [
      AppbarLinkModel(
          title: 'LinkedIn',
          asset: 'assets/images/linkedIn.svg',
          isSocial: true),
      AppbarLinkModel(
          title: 'GitHub', asset: 'assets/images/github.svg', isSocial: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: homeAppbar(context,
          activeLink: activeLink,
          links: _links,
          socials: _socials, onLinkTap: (link) {

        switch (link) {
          case 'LinkedIn':
            break;
          case 'GitHub':
            break;
          default:
            setState(() {
              activeLink = link;
            });
            break;
        }
      }),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 136),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              BioSection()
            ],
          )),
    );
  }
}
