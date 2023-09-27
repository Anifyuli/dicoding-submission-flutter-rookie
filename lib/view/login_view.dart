import 'package:flutter/material.dart';
import 'package:my_pati/auth/auth.dart';
import 'package:my_pati/view/changing_account_info_view.dart';
import 'package:my_pati/view/main_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? const PortraitLoginView()
            : const LandscapeLoginView(),
      ),
    );
  }
}

class LandscapeLoginView extends StatefulWidget {
  const LandscapeLoginView({super.key});

  @override
  State<LandscapeLoginView> createState() => _LandscapeLoginViewState();
}

class _LandscapeLoginViewState extends State<LandscapeLoginView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final username = Auth.username;
  final password = Auth.password;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void failedLogin() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
            'Maaf, Anda gagal masuk ke myPati. Cek kembali nama pengguna dan password Anda'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: const Text(
                            'Selamat datang',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: const Text(
                            'di myPati',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Silahkan Masuk',
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_2_rounded),
                          label: Text('Nama Pengguna'),
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          label: Text('Kata Sandi'),
                        ),
                        obscureText: true,
                        obscuringCharacter: '*',
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ChangeUserInfoView();
                            }));
                          },
                          child: const Text(
                            'Lupa kata sandi?',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: Material(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (usernameController.text == username &&
                                    passwordController.text == password) {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const MainView();
                                  }));
                                } else {
                                  failedLogin();
                                }
                              });
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: const SizedBox(
                              width: 120,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Masuk',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class PortraitLoginView extends StatefulWidget {
  const PortraitLoginView({super.key});

  @override
  State<PortraitLoginView> createState() => _PortraitLoginViewState();
}

class _PortraitLoginViewState extends State<PortraitLoginView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final username = Auth.username;
  final password = Auth.password;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void failedLogin() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
            'Maaf, Anda gagal masuk ke myPati. Cek kembali nama pengguna dan password Anda'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              alignment: Alignment.centerLeft,
              child: ListView(
                children: const [
                  Text(
                    'Selamat datang',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        color: Colors.blue),
                  ),
                  Text(
                    'di myPati',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        color: Colors.green),
                  ),
                ],
              ),
            )),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: const Text('Silahkan Masuk', style: TextStyle(fontSize: 24)),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_2_rounded),
                  label: Text('Nama Pengguna'),
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), label: Text('Kata Sandi')),
                obscureText: true,
                obscuringCharacter: '*',
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ChangeUserInfoView();
                        }));
                      },
                      child: const Text('Lupa kata sandi?',
                          style: TextStyle(fontSize: 18))))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          child: Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {
                setState(() {
                  if (usernameController.text == username &&
                      passwordController.text == password) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MainView();
                    }));
                  } else {
                    failedLogin();
                  }
                });
              },
              borderRadius: BorderRadius.circular(20),
              child: const SizedBox(
                width: 120,
                height: 60,
                child: Center(
                    child: Text('Masuk',
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
      ],
    );
  }
}
