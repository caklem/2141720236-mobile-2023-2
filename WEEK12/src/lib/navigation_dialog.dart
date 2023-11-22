import 'package:flutter/material.dart';

class NavigationDialog extends StatefulWidget {
  const NavigationDialog({super.key});

  @override
  State<NavigationDialog> createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  Color color = Colors.green.shade200;

  _showColorDialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("Very important question"),
            content: const Text("Please choose a color"),
            actions: [
              TextButton(
                  onPressed: () {
                    color = Colors.black;
                    Navigator.pop(context, color);
                  },
                  child: const Text("Black")),
              TextButton(
                  onPressed: () {
                    color = Colors.white;
                    Navigator.pop(context, color);
                  },
                  child: const Text("White")),
              TextButton(
                  onPressed: () {
                    color = Colors.green.shade400;
                    Navigator.pop(context, color);
                  },
                  child: const Text("Green")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await _showColorDialog(context);
              setState(() {});
            },
            child: const Text('Change Color')),
      ),
    );
  }
}
