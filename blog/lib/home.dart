import 'package:blog/main.dart';
import 'package:flutter/material.dart';

import 'description.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bg = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        // automaticallyImplyLeading: false, 返回上一頁 icon
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  bg = bg == Colors.grey ? Colors.white : Colors.grey; // 無 ===
                });
              },
              icon: const Icon(Icons.color_lens))
        ],
      ),
      drawer: SafeArea(
        // SafeArea 不會被上層 status bar 擋住
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: ListTile(
                  title: Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: Icon(Icons.logout_rounded),
                title: Text('Logout'),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        // make body content enable to scrolling
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Wrap(
                // flex-wrap
                spacing: 10, // equal flex gap
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('戀愛言情'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('BL'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('奇幻'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('科幻'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('18 禁'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(), // border radius
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text('穿越轉生'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'UK',
                        image: 'uk.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                width: double.infinity, // 會撐滿螢幕寬度, width:full
                // color: Colors.amber, // bg，無法與 decoration 同時存在
                decoration: BoxDecoration(
                    color: Colors.white, // bg
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/uk.png',
                      width: 150,
                    ),
                    const ListTile(
                      title: Text('UK'),
                      // leading: Icon(Icons.arrow_back_ios_new_outlined), // prefix icon
                      trailing:
                          Icon(Icons.arrow_forward_ios_rounded), // suffix icon
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'USA',
                        image: 'usa.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/usa.png',
                      width: 150,
                    ),
                    const ListTile(
                      title: Text('USA'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'Greece',
                        image: 'greece.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/greece.png',
                      width: 150,
                    ),
                    const ListTile(
                      title: Text('Greece'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'Kenya',
                        image: 'kenya.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/kenya.png',
                      width: 150,
                    ),
                    const ListTile(
                      title: Text('Kenya'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
