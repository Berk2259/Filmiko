import 'package:flutter/material.dart';
import 'package:filmiko/widget/alert_dialog_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text('Filmiko', style: TextStyle(color: Colors.white)),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: FloatingActionButton(
          onPressed: () {
            AlertDialogWidget();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
