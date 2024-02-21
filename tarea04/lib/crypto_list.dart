import 'package:flutter/material.dart';
import 'package:tarea04/details_page.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({
    super.key,
    required this.criptos,
  });

  final List criptos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: criptos.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("${criptos[index]["name"]}"),
          subtitle: Text(
              "${criptos[index]["country"]}\n${criptos[index]["year_established"]}"),
          trailing: CircleAvatar(
            child: Text("${criptos[index]["trust_score"]}"),
          ),
          leading: Image.network("${criptos[index]["image"]}"),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  name: "${criptos[index]["name"]}",
                  date: "${criptos[index]["year_established"]}",
                  image: "${criptos[index]["image"]}",
                  description: "${criptos[index]["description"]}",
                ),
              ),
            );
          },
        );
      },
    );
  }
}
