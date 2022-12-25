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
          title: const Text('code for change'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}
