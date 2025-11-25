import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonFun {
  static void launchEmail() async {
    final String subject = Uri.encodeComponent("Feedback for Profile App");
    final String body = Uri.encodeComponent("Dear Ye Htet Aung,");

    final Uri emailUrl = Uri.parse(
      'mailto:207yehtetag@gmail.com?subject=$subject&body=$body',
    );

    try {
      await launchUrl(emailUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('Error launching email : $e ');
    }
  }
}
