import 'package:flutter/material.dart';
import 'package:my_pati/view/changing_account_info_view.dart';
import 'package:my_pati/view/login_view.dart';
import 'package:my_pati/auth/auth.dart';

class UserAccountView extends StatelessWidget {
  const UserAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Akun Saya'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: AssetImage('images/icon_app.png'),
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Auth.realname,
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 16)),
                        Text(
                          Auth.username,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pengaturan Akun',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChangePasswordView();
                              }));
                            },
                            child: Row(
                              children: [
                                Icon(Icons.edit, color: Colors.grey[800]),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(
                                    'Ubah kata sandi',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const UpdateAccountInfoView();
                              }));
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.contact_page,
                                  color: Colors.grey[800],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(
                                    'Ubah data diri',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginView();
                    }));
                  },
                  child: const Text('Keluar')),
            )
          ],
        ),
      ),
    );
  }
}
