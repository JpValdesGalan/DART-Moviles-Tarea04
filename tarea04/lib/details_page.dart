import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String date;
  const DetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: Image.network("${image}"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "${name}\n${date}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(40),
                child: Text(
                  "${description}",
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
