import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> launchThisUrl(String url, BuildContext context) async {
    var targetUrl = Uri.parse(url);
    try {
      await launchUrl(targetUrl);
    } catch (e) {
      // to avoid putting build context directly in async method
      if (!context.mounted) return;
      snackBar(context);
    }
  }

  static void snackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      'Can not launch this book',
      textAlign: TextAlign.center,
    )));
  }
}
