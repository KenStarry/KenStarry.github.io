import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/model/appbar_link_model.dart';

Widget appbarLink({required VoidCallback onTap, required String title}) =>
    Builder(builder: (context) {
      return Container(
        child: Row(
          spacing: 8,
          children: [
            Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Text(title,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  fontWeight:
                  Theme.of(context).textTheme.bodyMedium!.fontWeight,
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ))
          ],
        ),
      );
    });

PreferredSizeWidget homeAppbar(BuildContext context) {
  List<AppbarLinkModel> titles = [
    AppbarLinkModel(title: 'Home', onTap: () {}),
    AppbarLinkModel(title: 'Skills', onTap: () {}),
    AppbarLinkModel(title: 'Works', onTap: () {}),
  ];

  return AppBar(
    title: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  color: Theme.of(context).textTheme.titleSmall!.color,
                )),
          ])),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
            children: titles
                .map((model) =>
                    appbarLink(onTap: model.onTap, title: model.title))
                .toList(),
          ))
        ],
      ),
    ),
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Theme.of(context).colorScheme.onSecondary,
    surfaceTintColor: Theme.of(context).colorScheme.onSecondary,
  );
}
