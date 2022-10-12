import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LoginTitle(),
            LoginImage(),
            LoginButtons(),
            LoginBottonText(),
          ],
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.081,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "BaskApp",
            style: TextStyle(fontSize: 32),
          ),
          Text(
            "Um App para peladeiros de basquete",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/peladeiro_basquete.png",
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.height * 0.3,
    );
  }
}

class LoginButtons extends StatelessWidget {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          "ENTRAR",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.04,
          child: ElevatedButton(
              onPressed: () {}, child: Text("Login com o Google")),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.04,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Login com Apple"),
          ),
        ),
        TextButton(
            onPressed: _launchUrl,
            child: const Text(
              "Equeceu sua senha?",
              style: TextStyle(fontSize: 12),
            ))
      ]),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

class LoginBottonText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Feito com airball em Caxias do Sul",
      style: TextStyle(
        fontSize: 12,
      ),
    );
  }
}
