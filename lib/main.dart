import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'List of Activities'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'images/profile_pic.png',
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Hesper Lee ZH',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('Matric Number: AI190244'),
                        Text('Faculty: UTHM FSKTM'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            /// With padding
            Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 5,
              color: Colors.lightGreenAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: const [
                        Text(
                          'Running',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('3.0/10.0 km'),
                        Text('Last update: 1/21/2022, Friday'),
                      ],
                    ),

                    /// Spacing between the column and the indicator
                    const Spacer(),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 8.0,
                      percent: 0.3,
                      center: const Text('Milestone'),
                      backgroundColor: Colors.white,
                      progressColor: Colors.lightGreen,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ],
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 5,
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Swimming',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('2.0/10.0 km'),
                        Text('Last update: 1/20/2022, Thursday'),
                      ],
                    ),
                    const Spacer(),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 8.0,
                      percent: 0.2,
                      center: const Text('Milestone'),
                      backgroundColor: Colors.white,
                      progressColor: Colors.lightBlue,
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ],
                ),
              ),
            ),

            /// Without padding
            Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 5,
              color: Colors.deepPurpleAccent,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Meditating',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('30 min/2 hr'),
                      Text('Last update: 1/21/2022, Friday'),
                    ],
                  ),
                  const Spacer(),
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 8.0,
                    percent: 0.25,
                    center: const Text('Milestone'),
                    backgroundColor: Colors.white,
                    progressColor: Colors.deepPurple,
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 3,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Overall Achievements',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: 0.5,
                      center: const Text("50.0%"),
                      barRadius: const Radius.circular(20.0),
                      // linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
