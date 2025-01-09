import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome William'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Keep Moving Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Categories', style: TextStyle(fontSize: 18)),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: Text('Development')),
                Chip(label: Text('IT & Software')),
                Chip(label: Text('Business')),
              ],
            ),
            SizedBox(height: 20),
            Text('Top Courses', style: TextStyle(fontSize: 18)),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: Center(child: Text('Course ${index + 1}')),
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
