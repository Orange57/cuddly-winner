import 'package:flutter/material.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class DoneWidget extends StatefulWidget {
  const DoneWidget({Key? key}) : super(key: key);

  @override
  _DoneWidgetState createState() => _DoneWidgetState();
}

class _DoneWidgetState extends State<DoneWidget> {
  bool _isDone = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isDone
                ? const Icon(Icons.check_box_outlined)
                : const Icon(Icons.check_box_outline_blank_outlined)),
            color: Colors.green[500],
            onPressed: _toggleDoneTask,
          ),
        ),
        /*SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('Validation'),
          ),
        ),*/
      ],
    );
  }

  void _toggleDoneTask() {
    setState(() {
      if (_isDone) {
        _isDone = false;
      } else {
        _isDone = true;
      }
    });
  }
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
    Color color = Theme.of(context).primaryColor;

    Widget oneTask = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Nom de la tâche',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const DoneWidget(),
        ],
      ),
    );

    return MaterialApp(
      title: 'TO-DO Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO Application'),
        ),
        body: ListView(
          children: [
            oneTask
          ],
        ),
      ),
    );
  }
}