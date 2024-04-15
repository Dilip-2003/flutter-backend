import 'package:flutter/material.dart';
import 'package:flutter_backend/data/create.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateData(),
                      ));
                },
                child: Text('Create')),
            ElevatedButton(onPressed: () {}, child: Text('Read')),
            ElevatedButton(onPressed: () {}, child: Text('Update')),
            ElevatedButton(onPressed: () {}, child: Text('Delete')),
          ],
        ),
      ),
    );
  }
}
