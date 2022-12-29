import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({key: Key});
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Note'),
          // centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => {},
            )
          ],
        ),
        body: ListView(
          children: [
            for (int data = 0; data < 20; data++)
              const ListTile(
                title: Text(
                  'yamraj chaudhry ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(Icons.verified),
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
