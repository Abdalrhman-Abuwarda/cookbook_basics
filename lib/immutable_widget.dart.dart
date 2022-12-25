import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.green),
        foregroundDecoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.colorBurn,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xAA0d6123),
              Color(0x00000000),
              Color(0xAA0d6123),
            ],
          ),
        ),

        //color: Colors.green,
        // margin: const EdgeInsets.all(10.0),
        //  width: 70.0,
        //  height: 70.0,
        child: Center(
          //padding:const EdgeInsets.all(40),
          child: Transform.rotate(
            angle: 180 / pi,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.purple,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset.fromDirection(1.0, 20),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              //color: Colors.purple,
              child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: _buildShinyCircle()

                  // height: 100,
                  // width: 100,
                  // decoration: BoxDecoration(

                  //    ),
                  ),
            ),
          ),
        ),
      ),
    );

    // return const Scaffold(
    //   backgroundColor: Colors.white,
    //
    //   //Exercise
    //   body: Center(
    //
    //   ),
    // );
    //   child: Container(
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //             begin: Alignment.bottomLeft,
    //             end: Alignment(0.5, 1),
    //             colors: <Color>[
    //           Colors.blue,
    //           // Color(0xff5b0060
    //           // Color(0xffca485c),
    //           // Color(0xffe16b5c),
    //           // Color(0xfff39060),
    //           Colors.lightGreenAccent,
    //         ]),
    //     borderRadius: BorderRadius.circular(20),
    //     boxShadow:[
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         spreadRadius: 5,
    //         blurRadius: 9,
    //         offset: Offset(0, 3), // changes position of shadow
    //       ),
    //     ], ),
    //     margin: const EdgeInsets.all(10.0),
    //     width: 300.0,
    //     height: 150.0,
    //
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           "Hello Word",
    //           style: TextStyle(fontSize: 25),
    //         ),
    //         Text(
    //           "This is new example",
    //           style: TextStyle(fontSize: 20),
    //         ),
    //       ],
    //     ),
    //   ),

    //Example in the book
  }
}

Widget _buildShinyCircle() {
  return Container(
    decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [
          Colors.lightGreenAccent,
          Colors.blueAccent,
        ], center: Alignment(-0.3, -0.5)),
        boxShadow: [BoxShadow(blurRadius: 20)]),
  );
}
