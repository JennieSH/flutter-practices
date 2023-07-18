import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // get route data
    data =
        data.isEmpty ? ModalRoute.of(context)?.settings.arguments as Map : data;

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor =
        data['isDaytime'] ? Colors.blue : Colors.indigo[700] as Color;

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  // 前往 /location 頁面
                  // Navigator.pushNamed 會 return 前頁面 pop 的 result
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');

                  setState(() {
                    data = result;
                  });
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[300],
                ),
                label: Text(
                  'Edit location',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
