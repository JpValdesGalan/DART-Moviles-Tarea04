import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tarea04/crypto_list.dart';
import 'package:tarea04/data/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> criptos = [];

  @override
  void initState() {
    super.initState();
    criptos = jsonDecode(CRYPTO_EXCHANGES);

    for (var cripto in criptos) {
      if (cripto["name"] == "" || cripto["name"] == null) {
        cripto["name"] = "Not Available";
      }
      if (cripto["description"] == "" || cripto["description"] == null) {
        cripto["description"] = "Not Available";
      }
      if (cripto["year_established"] == "" ||
          cripto["year_established"] == null) {
        cripto["year_established"] = "Not Available";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Look'),
      ),
      body: CryptoList(criptos: criptos),
    );
  }
}
