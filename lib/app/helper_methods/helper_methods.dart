import 'package:url_launcher/url_launcher.dart';

launchUrlInBrowser(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

launchEmail(email) async {
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}
