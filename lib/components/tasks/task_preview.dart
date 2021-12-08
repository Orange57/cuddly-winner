import 'package:flutter/material.dart';
import '../../data/tasks.dart';

class Task_Preview extends StatelessWidget{
  
  final doneWidget = DoneWidget();

  @override
  Widget build(BuildContext context) {
    final tasks = List<Task>.generate(
      15, (int index) {
      return Task(
          id: index,
          content: 'Name task n°'.toString() + index.toString()
      );
      }
    );
    
    return MaterialApp(
      //title: 'TO-DO Application',
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('TO-DO Application'),
        ),*/
        body: ListView(
          children: [
            titleSection(tasks),
          ],
        ),
      ),
    );
  }

  
  
  Widget titleSection(List<Task> tasks) {return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final item = tasks[index];

                  //doneWidget.setTask(item);

                  return ListTile(
                    title: item.getContent(),
                    subtitle: item.getId(),
                  );
                },
              ),
            ],
          ),
        ),
        /*3*/
        const DoneWidget(),
      ],
    ),
  );
  }
}

class DoneWidget extends StatefulWidget {
  const DoneWidget({Key? key}) : super(key: key);

  @override
  _DoneWidgetState createState() => _DoneWidgetState();
}

class _DoneWidgetState extends State<DoneWidget> {
  bool _isDone = false;
  
  var task = Task();

  void setTask(Task theTask)
  {
    task = theTask;
  }

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
      ],
    );
  }

  void _toggleDoneTask() {
    setState(() {
      if (task.checkCompleted()) {
        _isDone = true;
        task.activateCompleted();
      } else {
        _isDone = false;
        task.unactivateCompleted();
      }
    });
  }
}