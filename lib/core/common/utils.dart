import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> redirectToYoutube(String id) async {
    await redirectTo('https://www.youtube.com/watch?v=$id');
  }

  static Future<void> redirectTo(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
