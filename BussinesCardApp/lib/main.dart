import 'package:flutter/material.dart';

void main() {
  runApp(
    const BusinnesCardApp(),
  );
}

class BusinnesCardApp extends StatelessWidget {
  const BusinnesCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF4CBBC2),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            radius: 112,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('images/gambool.jpeg'),
            ),
          ),
          const Text(
            'Yara Ahmed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Pacifico',
            ),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              color: Color.fromARGB(255, 174, 248, 253),
              fontSize: 22,
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 174, 248, 253),
            thickness: 1,
            indent: 60,
            endIndent: 60,
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              height: 70,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 36, 151, 159),
                      size: 32,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      '(+20) 1129979280',
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 146, 155),
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Icon(
                Icons.mail,
                color: Color.fromARGB(255, 36, 151, 159),
                size: 32,
              ),
              title: Text(
                'YaraAhmed@gmail.com',
                style: TextStyle(
                    color: Color.fromARGB(255, 26, 146, 155), fontSize: 22),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
