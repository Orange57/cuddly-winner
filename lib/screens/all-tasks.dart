import 'package:flutter/material.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        /*onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: const Text('Incrementer'),
        icon: const Icon(Icons.add),
        hoverElevation: 50,*/
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            //label: const Text('Incrementer'),
            child: const Icon(Icons.add),
            hoverElevation: 50,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(           
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            //label: const Text('Incrementer'),
            child: const Icon(Icons.remove),
            hoverElevation: 50,
          )
        ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
      /*floatingActionButtonRemove: FloatingActionButton(
        onPressed: _unincrementCounter,
        tooltip: 'Unincrement',
        child: const Icon(Icons.remove),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}