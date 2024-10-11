import 'package:flutter/material.dart';

class Lab3Design extends StatelessWidget {
  const Lab3Design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LAB #3 title
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'LAB #3',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            // Blue container with green "screen"
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Container(
                  width: 160,
                  height: 80,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Overlapping squares and number list
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  right: -50,
                  child: Container(
                    width: 50,
                    height: 200,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        9,
                        (index) => Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Practice text
            Text(
              'PRACTICE MORE THAN THIS. IT WILL HELP YOU',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'TO DESIGN COMPLEX MOBILE APP DESIGN',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(height: 20),
            // Leading Trailing container
            Container(
              width: 200,
              height: 50,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LEADING', style: TextStyle(color: Colors.white)),
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 20,
                  ),
                  Text('TRAILING', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}