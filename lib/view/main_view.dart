import 'package:flutter/material.dart';
import 'package:my_pati/value/main_value.dart';
import 'package:my_pati/view/place_list_view.dart';
import 'package:my_pati/view/user_account_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final city = MainInfo.cityName;
  final shortDescription = MainInfo.description;
  final Uri patiGovWeb = Uri.parse('https://www.patikab.go.id/v2/id/');
  final Uri patiWikipedia =
      Uri.parse('https://id.wikipedia.org/wiki/Kabupaten_Pati');
  final Uri referenceWeb = Uri.parse(
      'https://tempatwisataseru.com/tempat-wisata-di-pati-jawa-tengah-terbaru/');
  final Uri location = Uri.parse('https://maps.app.goo.gl/9La9WiFE9hefjEba7');

  Future<void> openPatiGovWeb() async {
    if (!await launchUrl(patiGovWeb, mode: LaunchMode.inAppWebView)) {
      throw Exception('Laman web gagal ditampilkan');
    }
  }

  Future<void> openWikipedia() async {
    if (!await launchUrl(patiWikipedia, mode: LaunchMode.inAppWebView)) {
      throw Exception('Laman web gagal ditampilkan');
    }
  }

  Future<void> openReferenceWeb() async {
    if (!await launchUrl(referenceWeb, mode: LaunchMode.inAppWebView)) {
      throw Exception('Laman web gagal ditampilkan');
    }
  }

  Future<void> openLocation() async {
    if (!await launchUrl(location, mode: LaunchMode.inAppWebView)) {
      throw Exception('Laman web gagal ditampilkan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('myPati'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const UserAccountView();
                }));
              },
              icon: const Icon(Icons.person_2_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 30, 40, 10),
              child: const Center(
                child: Text(
                  'Selamat datang di myPati',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 30, 40, 40),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sunny, size: 32),
                  Text('Cerah, 36° C', style: TextStyle(fontSize: 24))
                ],
              ),
            ),
            Stack(
              children: [
                Align(child: Image.asset('images/alun_alun_pati.jpg')),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton.small(
                    backgroundColor: Colors.red,
                    onPressed: () {
                      openLocation();
                    },
                    child: const Icon(Icons.location_on),
                  ),
                ),
              ],
            ),
            const SizedBox(),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(city,
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: const Text('Deskripsi singkat',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child:
                  Text(shortDescription, style: const TextStyle(fontSize: 16)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text('Tempat Wisata Menarik',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/alun_alun_pati.jpg')),
                  const SizedBox(width: 20),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/pantai_banyutowo.jpg')),
                  const SizedBox(width: 20),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/waduk_gunung_rowo.jpg')),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 100,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PlaceListView();
                          }));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.red),
                            Text('Lainnya', style: TextStyle(fontSize: 16))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text('Sumber rujukan',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[300],
                    child: InkWell(
                      onTap: openPatiGovWeb,
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 10,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.public,
                                  color: Colors.white,
                                ),
                                Text('Web Pemerintah Kabupaten Pati',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))
                              ],
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[300],
                    child: InkWell(
                      onTap: openWikipedia,
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 10,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.web,
                                  color: Colors.white,
                                ),
                                Text('Kabupaten Pati - Wikipedia',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))
                              ],
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[300],
                    child: InkWell(
                      onTap: openReferenceWeb,
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 10,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.web,
                                  color: Colors.white,
                                ),
                                Text('tempatwisataseru.com',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
