import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/bio/presentation/bio_section.dart';
import 'package:portfolio/features/home/presentation/components/home_appbar.dart';

import '../../../../core/di/locator.dart';
import '../../../../core/util/classes/utility_classes.dart';
import '../model/appbar_link_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String activeLink = 'Bio';

  late final List<AppbarLinkModel> _links;
  late final List<AppbarLinkModel> _socials;
  late final CarouselSliderController _carouselSliderController;

  @override
  void initState() {
    super.initState();

    _carouselSliderController = CarouselSliderController();

    _links = [
      AppbarLinkModel(title: 'Bio', asset: 'assets/images/home.svg'),
      AppbarLinkModel(title: 'Skills', asset: 'assets/images/skills.svg'),
      AppbarLinkModel(title: 'Works', asset: 'assets/images/works.svg'),
      AppbarLinkModel(title: 'Education', asset: 'assets/images/education.svg'),
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
          socials: _socials, onLinkTap: (link) async {
        final utilities = locator.get<UtilityClasses>();

        switch (link) {
          case 'LinkedIn':
            await utilities.launchLinkedIn();
            break;
          case 'GitHub':
            await utilities.launchGithub();
            break;
          default:
            setState(() {
              activeLink = link;
            });
            _carouselSliderController.animateToPage(
                _links.map((l) => l.title).toList().indexOf(link));
            break;
        }
      }),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 136),
          child: CarouselSlider(
              carouselController: _carouselSliderController,
              items: [BioSection(), BioSection()],
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.vertical,
                  pageSnapping: false,
                  viewportFraction: 1))),
    );
    // return Scaffold(
    //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    //   appBar: homeAppbar(context,
    //       activeLink: activeLink,
    //       links: _links,
    //       socials: _socials, onLinkTap: (link) {
    //
    //     switch (link) {
    //       case 'LinkedIn':
    //         break;
    //       case 'GitHub':
    //         break;
    //       default:
    //         setState(() {
    //           activeLink = link;
    //         });
    //         break;
    //     }
    //   }),
    //   body: Container(
    //       width: double.infinity,
    //       height: double.infinity,
    //       padding: const EdgeInsets.symmetric(horizontal: 136),
    //       child: CustomScrollView(
    //         physics: const BouncingScrollPhysics(),
    //         slivers: [
    //           BioSection()
    //         ],
    //       )),
    // );
  }
}
