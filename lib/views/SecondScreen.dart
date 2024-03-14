import 'package:flutter/material.dart';
import '../modul/tourism_place.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Image.network(place.imageUrls[0]),
                  ),
                  Text(place.name),
                ],
              ));
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
