import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> Custom_Launch_Url(context, String? Url) async {
  if (Url != null) {
    Uri url = Uri.parse(Url);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Cannot Launch $Url")));
    }
  }
}
