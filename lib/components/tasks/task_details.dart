// first route
/*class Task_Form extends StatelessWidget{
    const FirstRoute({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Task Form'),
            ),
            body: Center(
                child : ElevatedButton(
                    child: Text('Go to Task List'),
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Task_Preview()),
                        )
                    }
                )
            )
        );
}*/

import 'package:flutter/material.dart';

class Task_Form extends StatelessWidget{
    const Task_Form({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Task Form'),
            ),
            body: Center(
                child : ElevatedButton(
                    child: Text('Go to Task List'),
                    onPressed : () {
                        Navigator.pop(context);
                    }
                )
            )
        );
    }
}