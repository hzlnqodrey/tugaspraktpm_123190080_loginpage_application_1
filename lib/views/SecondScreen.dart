import 'package:flutter/material.dart';
import '../modul/tourism_place.dart';
import 'package:tugaspraktpm_123190080_loginpage_application_1/views/DetailPage.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman List'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      child: Image.network(place.imageUrls[0]),
                    ),
                    Text(place.name),
                  ],
                ),
              ));
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
