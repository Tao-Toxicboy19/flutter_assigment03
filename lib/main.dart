// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, avoid_unnecessary_containers, unnecessary_brace_in_string_interps, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> result = [
      "dog",
      "cat",
      "cow",
      "bread",
      "fish",
    ];

    List<Icon> icons = [
      Icon(Icons.air_rounded),
      Icon(Icons.accessible_forward_sharp),
      Icon(Icons.account_tree_outlined),
      Icon(Icons.account_tree_outlined),
      Icon(Icons.account_tree_outlined),
      Icon(Icons.account_tree_outlined),
    ];

    return GetMaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.air_rounded),
          title: Text("hello world!"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Text("helo world"),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(7),
                      width: 80,
                      child: Card(
                        color: Colors.deepOrange.shade200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              icons[index],
                              SizedBox(height: 8),
                              Text(
                                result[index],
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text("helo world"),
              Container(
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: result.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Card(
                          color: (index % 2 == 0) ? Colors.amber : Colors.pink,
                          child: ListTile(
                            leading: Icon(Icons.air_rounded),
                            title: Text(result[index]),
                            subtitle: Text("lorem bababababa"),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
