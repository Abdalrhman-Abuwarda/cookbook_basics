import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'immutable_widget.dart.dart';
import 'text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Wwelcome to Flutter"),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.edit))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: ImmutableWidget(),
          ),
          TextLayout()
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(child: Text("I'm a Ddrawer")),
        ),
      ),
    );
  }
}
