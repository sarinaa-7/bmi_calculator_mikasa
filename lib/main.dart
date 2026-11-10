import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.orange,
          title: Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight(1000)),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.teal,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 35, color: Colors.white),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.teal,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 35, color: Colors.white),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.teal,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight(1000),
                        ),
                      ),

                      Text(
                        '$height cm',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight(1000),
                        ),
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.teal,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                  
                            Text(
                              '60 kg',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                  
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    backgroundColor: Colors.orange,
                                    heroTag: 'btn1',
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    backgroundColor: Colors.orange,
                                    heroTag: 'btn2',
                                    child: Icon(
                                      Icons.remove,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.teal,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                  
                            Text(
                              '30',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight(1000),
                              ),
                            ),
                  
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    backgroundColor: Colors.orange,
                                    heroTag: 'btn3',
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    backgroundColor: Colors.orange,
                                    heroTag: 'btn4',
                                    child: Icon(
                                      Icons.remove,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
