import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final img = const CircleAvatar(
    backgroundImage:
        NetworkImage('https://avatars.githubusercontent.com/u/93539482?v=4'),
    radius: 100,
  );
  final botaoPhone = IconButton(
      onPressed: () {
        launchUrl(Uri(scheme: 'tel', path: '079999228640'));
      }, icon: const Icon(Icons.phone, color: Colors.blue));
  final botaoEmail = IconButton(
      onPressed: () {
        launchUrl(Uri(scheme: 'email', path: 'matheus.dev105@outlook.com'));

      }, icon: const Icon(Icons.email, color: Colors.blue));
  final botaoSMS = IconButton(
      onPressed: () {
        launchUrl(Uri(scheme: 'sms', path: '079999228640'));

      }, icon: const Icon(Icons.sms, color: Colors.blue));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          img,
          const Text(
            'Matheus Rodrigues',
            style: TextStyle(fontSize: 30),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [botaoPhone, botaoEmail, botaoSMS])
        ],
      ),
    );
  }
}
