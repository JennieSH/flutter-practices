import 'package:blog/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false, // toggle showing the debug badge
      theme: ThemeData(
        primarySwatch: Colors.red, // 決定 appbar 色系
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'To Blog',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(
              150,
            )),
            child: Image.asset(
              'assets/uk.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ), // 路徑無效需重啟
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                // 使用 pushReplacement，appBar 沒有使用上一頁返回到這，不會進入 route stack
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomePage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              minimumSize: const Size(300, 40),
            ),
            child: const Text('Login'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              minimumSize: const Size(300, 40),
            ),
            child: const Text('Register'),
          ),
        ]),
      ),
    );
  }
}
