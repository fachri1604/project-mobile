import 'package:flutter/material.dart';
import 'package:melicon/widget/custom.dart';
import 'package:melicon/widget/customwidget.dart';

class KucingState extends StatefulWidget {
  @override
  _KucingStateState createState() => _KucingStateState();
}

class _KucingStateState extends State<KucingState> {
  int _selectedIndex = 0;

  List<Baju> _bajuList = [
    Baju(imageUrl: 'assets/product_1.jpg', label: 'Baju 1'),
    Baju(imageUrl: 'assets/baju2.jpg', label: 'Baju 2'),
    Baju(imageUrl: 'assets/baju3.jpg', label: 'Baju 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: _bajuList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              _bajuList[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _bajuList[index].label,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
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

class Baju {
  final String imageUrl;
  final String label;

  Baju({required this.imageUrl, required this.label});
}
