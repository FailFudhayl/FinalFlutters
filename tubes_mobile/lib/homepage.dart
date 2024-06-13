import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userName = 'Fa\'il'; // Ubah nama sesuai kebutuhan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Halooo, $userName',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Image.asset(
                  'assets/logos_final.png',
                  width: 40.0,
                  height: 40.0,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Memory',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 1350.0,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    width: 1080.0,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('assets/slide${index + 1}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
