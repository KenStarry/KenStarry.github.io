import 'package:url_launcher/url_launcher.dart';

mixin Urls {
  /// Launch LinkedIn
  Future<void> launchLinkedIn() async {
    final url =
        Uri.parse('https://www.linkedin.com/in/kenneth-michuki-133a04217/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could Not Launch URL';
    }
  }

  /// Launch GitHub
  Future<void> launchGithub() async {
    final url = Uri.parse('https://github.com/KenStarry');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could Not Launch URL';
    }
  }
}
