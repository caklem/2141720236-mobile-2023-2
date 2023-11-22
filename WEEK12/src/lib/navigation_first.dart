import 'package:flutter/material.dart';
import 'package:week12/navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.black;

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NavigationSecond(),
        ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Halim'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _navigateAndGetColor(context);
            },
            child: const Text("Change Color")),
      ),
    );
  }
}
