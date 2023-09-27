import 'package:flutter/material.dart';
import 'package:my_pati/auth/auth.dart';
import 'package:my_pati/view/login_view.dart';

class ChangeUserInfoView extends StatefulWidget {
  const ChangeUserInfoView({super.key});

  @override
  State<ChangeUserInfoView> createState() => _ChangeUserInfoViewState();
}

class _ChangeUserInfoViewState extends State<ChangeUserInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Ubah Data Akun'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 15),
              child: const Center(
                child: Text(
                  'Apa yang bisa dibantu?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ChangePasswordView();
                          }));
                        },
                        child: const Text(
                          'Ganti kata sandi',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const UpdateAccountInfoView();
                          }));
                        },
                        child: const Text(
                          'Ubah data akun',
                          style: TextStyle(fontSize: 18),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatedPasswordController = TextEditingController();

  final username = Auth.username;
  final password = Auth.password;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    repeatedPasswordController.dispose();
    super.dispose();
  }

  void failedUpdate() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
            'Maaf, kata sandi yang Anda pilih tidak sama, mohon cek kembali kata sandi yang dimasukkan'),
      ),
    );
  }

  void successUpdate() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Kata sandi berhasil diubah'),
      ),
    );
  }

  void successUpdateWithUsername() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Nama pengguna & kata sandi berhasil diubah'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Ganti Kata Sandi'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: const Text(
                  'Silahkan masukkan nama pengguna dan kata sandi baru',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Nama pengguna',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                label: Text('Nama pengguna'),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Kata sandi baru',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock), label: Text('Kata sandi baru')),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Masukkan kembali kata sandi baru',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: repeatedPasswordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock), label: Text('Kata sandi baru')),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              alignment: Alignment.center,
              child: Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {
                    final newUsername = usernameController.text;
                    var newPassword = passwordController.text;
                    var repeatedPassword = repeatedPasswordController.text;

                    if (newUsername == Auth.username &&
                        repeatedPassword == newPassword) {
                      Auth.password = newPassword;
                      successUpdate();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    } else if (newUsername != Auth.username &&
                        repeatedPassword == newPassword) {
                      Auth.username = newUsername;
                      Auth.password = newPassword;
                      successUpdateWithUsername();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    } else {
                      failedUpdate();
                    }
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: const SizedBox(
                    width: 130,
                    height: 65,
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateAccountInfoView extends StatefulWidget {
  const UpdateAccountInfoView({super.key});

  @override
  State<UpdateAccountInfoView> createState() => _UpdateAccountInfoViewState();
}

class _UpdateAccountInfoViewState extends State<UpdateAccountInfoView> {
  final realnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatedPasswordController = TextEditingController();

  final realname = Auth.realname;
  final username = Auth.username;
  final password = Auth.password;

  @override
  void dispose() {
    realnameController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    repeatedPasswordController.dispose();
    super.dispose();
  }

  void failedUpdate() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
            'Maaf, data diri yang dimasukkan tidak sesuai, mohon cek kembali kata sandi yang dimasukkan'),
      ),
    );
  }

  void successUpdatePartial() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Data diri berhasil diubah'),
      ),
    );
  }

  void successUpdateAll() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Nama akun, nama pengguna & kata sandi berhasil diubah'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Ganti Kata Sandi'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: const Text(
                  'Silahkan masukkan data diri yang akan diubah',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Nama akun',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: realnameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people_alt_rounded),
                label: Text('Nama akun'),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Nama pengguna',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                label: Text('Nama pengguna'),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Kata sandi baru',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock), label: Text('Kata sandi baru')),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Masukkan kembali kata sandi baru',
                  style: TextStyle(fontSize: 18),
                )),
            TextField(
              controller: repeatedPasswordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock), label: Text('Kata sandi baru')),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              alignment: Alignment.center,
              child: Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {
                    final newRealname = realnameController.text;
                    final newUsername = usernameController.text;
                    var newPassword = passwordController.text;
                    var repeatedPassword = repeatedPasswordController.text;

                    if (newRealname == Auth.realname &&
                        newUsername == Auth.username &&
                        repeatedPassword == newPassword) {
                      Auth.password = newPassword;
                      successUpdatePartial();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    } else if (newRealname == Auth.realname &&
                        newUsername != Auth.username &&
                        repeatedPassword == newPassword) {
                      Auth.realname = newRealname;
                      Auth.username = newUsername;
                      Auth.password = newPassword;
                      successUpdatePartial();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    } else if (newRealname != Auth.realname ||
                        newUsername != Auth.username &&
                            repeatedPassword == newPassword) {
                      Auth.realname = newRealname;
                      Auth.username = newUsername;
                      Auth.password = newPassword;
                      successUpdateAll();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }));
                    } else {
                      failedUpdate();
                    }
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: const SizedBox(
                    width: 130,
                    height: 65,
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
