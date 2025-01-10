import 'dart:ui';

class AppbarLinkModel {
  final String title;
  final bool isSocial;
  final String asset;

  AppbarLinkModel({required this.title, this.isSocial = false, required this.asset});
}