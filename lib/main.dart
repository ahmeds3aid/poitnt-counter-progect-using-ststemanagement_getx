import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thid_poroject/controller/homecontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // void addonepoint() {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('points counter'),
          backgroundColor: Colors.orange,
        ),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (Controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 44),
                      ),
                      Text(
                        '${Controller.teamApoints}',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment();
                        },
                        child: const Text(
                          'add 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 1,),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment2();
                        },
                        child: const Text(
                          'add 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 1,),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment3();
                        },
                        child: const Text(
                          'add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 12,),
                    ],
                  ),
                  const SizedBox(
                    height: 340,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  //second coulmn
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 44),
                      ),
                      Text(
                        '${Controller.teamBpoints}',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment4();
                        },
                        child: const Text(
                          'add 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 1,),
                      const SizedBox(
                        height: 20,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment5();
                        },
                        child: const Text(
                          'add 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 1,),
                      const SizedBox(
                        height: 20,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          Controller.increment6();
                        },
                        child: const Text(
                          'add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 12,),
                    ],
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  Controller.reset();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
