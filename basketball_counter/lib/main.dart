import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 91, 200, 51),
          title: const Text('Points counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 140,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamAPoints < 99) teamAPoints++;
                            });
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamAPoints < 98) teamAPoints += 2;
                            });
                          },
                          child: Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamAPoints < 97) teamAPoints += 3;
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 180, 197, 185),
                    thickness: 2,
                    indent: 60,
                    endIndent: 100,
                    width: 60,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 140,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamBPoints < 99) teamBPoints++;
                            });
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamBPoints < 98) teamBPoints += 2;
                            });
                          },
                          child: Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 126, 228, 88),
                            minimumSize: Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              if (teamBPoints < 97) teamBPoints += 3;
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 126, 228, 88),
                  minimumSize: Size(140, 40),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoints = teamBPoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
