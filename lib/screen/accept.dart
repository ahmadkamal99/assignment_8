import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Gmail_url = Uri.parse('https://mail.google.com/mail/u/0/#inbox');

Future<void> _launchUrl() async {
  if (!await launchUrl(Gmail_url)) {
    throw 'Could not launch $Gmail_url';
  }
}

class accept_page extends StatefulWidget {
  const accept_page({super.key});

  @override
  State<accept_page> createState() => _accept_pageState();
}

class _accept_pageState extends State<accept_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
                child: Image(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/10/20/22/32/businessman-2873115__340.png")))
          ],
        ));
  }
}
