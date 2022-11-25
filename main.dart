import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  final message = SnackBar(
                    content: Text("This is Snackbar"),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(10),
                    shape: StadiumBorder(),
                    duration: Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "Done",
                      onPressed: () {},
                    ),
                  );
                  Scaffold.of(context).showSnackBar(message);
                },
                child: Text("Click me")),
          );
        },
      ),

    );
  }
}
