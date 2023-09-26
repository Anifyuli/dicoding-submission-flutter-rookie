import 'package:flutter/material.dart';
import 'package:my_pati/value/detail_info.dart';

class DetailView extends StatelessWidget {
  final DetailInfo info;
  const DetailView({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Informasi'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Stack(children: [
                Image.asset(info.imageAsset),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton.small(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    child: const Icon(Icons.location_on),
                  ),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                info.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                info.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
