import 'package:flutter/material.dart';
import '../../data/tasks.dart';
import './task_details.dart';

class Task_Preview extends StatelessWidget{
  
  final tasks = List<Task>.generate(
    15, (int index) {
    return Task(
        id: index,
        content: 'Name task'.toString()
    );}
  );
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO-DO Application',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TO-DO Application'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final item = tasks[index];

            return ListTile(
              title: item.getContent(),
              subtitle: item.getId(),
            );
          },
        ),
      ),
    );
  }

  /*void getOneTask()
  {
    print(oneTask);
  }*/
  //State<Task_Preview> createState() => Task_Preview();
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
            onPressed: ()=>{ _toggleDoneTask()},
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