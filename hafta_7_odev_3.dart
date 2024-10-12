import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButtonLocation:
          FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                print("FlotingActionButton'a Basıldı!");
              },
              backgroundColor: Colors.cyan,
              child: Icon(Icons.add)),
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text("Hi-Kod"),
            leading: Icon(Icons.menu),
            //titleSpacing:100.0,
            centerTitle: true,
            actions: [Icon(Icons.accessibility), Icon(Icons.add)],
            forceMaterialTransparency: false,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 50),
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.blueGrey,
                    )
                  ],
                ),
              ],
            ),
          )
        ));
  }
}
