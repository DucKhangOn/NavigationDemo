import 'package:flutter/material.dart';

class ListNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Menu'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: 50,
              color: Colors.blue[600],
              child: const Center(child: Text('First Page')),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 50,
              color: Colors.blue[500],
              child: const Center(child: Text('Second Page')),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 50,
              color: Colors.blue[400],
              child: const Center(child: Text('Third Page')),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 50,
              color: Colors.blue[300],
              child: const Center(child: Text('Fourth Page')),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FourthPage()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 50,
              color: Colors.blue[200],
              child: const Center(child: Text('Fifth Page')),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FiftPage()));
            },
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Navigate to Second Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(child: Text('Second Page!', style: optionStyle,)),
    );
  }
}

class ThirdPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: ElevatedButton(
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FourthPage()),
            );
          },
          child: Text('Navigate to Fourth Page'),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Page"),
      ),
      body: Center(child: Text('Fourth Page!', style: optionStyle,)),
    );
  }
}

class FiftPage extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
