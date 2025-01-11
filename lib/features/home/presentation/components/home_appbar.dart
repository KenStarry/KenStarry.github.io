import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/util/extensions/widget_extensions.dart';
import 'package:portfolio/features/home/presentation/model/appbar_link_model.dart';

import '../../../../theme/colors.dart';

Widget appbarLink(
        {required VoidCallback onTap,
        required AppbarLinkModel link,
        required bool isActive}) =>
    Builder(builder: (context) {
      return Container(
        child: Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: link.isSocial
              ? [
                  SvgPicture.asset(link.asset,
                      width: 20,
                      height: 20,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).textTheme.bodyMedium!.color!,
                          BlendMode.srcIn)),
                  Text(link.title,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.bodyMedium!.fontWeight,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      )),
                ]
              : [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isActive
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).textTheme.bodyMedium!.color),
                  ),
                  Text(link.title,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.titleMedium!.fontWeight,
                        color: isActive
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).textTheme.bodyMedium!.color,
                      )),
                  SvgPicture.asset(link.asset,
                      width: 20,
                      height: 20,
                      colorFilter: ColorFilter.mode(
                          isActive
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).textTheme.bodyMedium!.color!,
                          BlendMode.srcIn))
                ],
        ),
      ).clickableMouse(onTap: onTap);
    });

PreferredSizeWidget homeAppbar(BuildContext context,
    {required String activeLink,
    required List<AppbarLinkModel> links,
    required List<AppbarLinkModel> socials,
    required Function(String link) onLinkTap}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Theme.of(context).colorScheme.onPrimary,
    surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
    title: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 32,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
                text: "Ken ", style: Theme.of(context).textTheme.titleSmall),
            TextSpan(
                text: "Starry",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                  fontWeight:
                      Theme.of(context).textTheme.bodyMedium!.fontWeight,
                  color: whiteColor2,
                )),
          ])),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 40,
            children: links
                .map((model) => appbarLink(
                    onTap: () => onLinkTap(model.title),
                    link: model,
                    isActive: model.title == activeLink))
                .toList(),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 40,
            children: socials
                .map((model) => appbarLink(
                    onTap: () => onLinkTap(model.title),
                    link: model,
                    isActive: model.title == activeLink))
                .toList(),
          )
        ],
      ),
    ),
  );
}
