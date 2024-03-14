import 'package:flutter/material.dart';
import 'package:tugaspraktpm_123190080_loginpage_application_1/modul/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image.network(
              widget.place.imageUrls[0],
              fit: BoxFit.cover,
            ),
          ),
          Text(widget.place.name),
          Text(widget.place.location),
          Text(widget.place.description),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          _launchUrl("https://spada.upnyk.ac.id/");
        },
        child: Icon(Icons.open_in_browser),
        backgroundColor: Colors.pink,
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception("Could not launch $url");
    }
  }
}
