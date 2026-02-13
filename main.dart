import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // List of subjects for ListView
  List<String> subjects = [
    "Programming",
    "Networking",
    "Database",
    "Web Development",
    "Mobile Development",
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget containerExample() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        "This is a Container Widget",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget listViewExample() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(subjects[index]),
          );
        },
      ),
    );
  }

  Widget gridViewExample() {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            color: Colors.orange,
            child: Center(
              child: Text(
                "Item ${index + 1}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget stackExample() {
    return Container(
      height: 200,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(width: double.infinity, height: 200, color: Colors.grey),
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              "Stack Example",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            containerExample(),
            listViewExample(),
            gridViewExample(),
            stackExample(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
