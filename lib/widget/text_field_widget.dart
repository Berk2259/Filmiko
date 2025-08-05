import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;

  const TextFieldWidget({super.key, required this.label});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white), //yazılan yazı rengi
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(),
        labelStyle: TextStyle(color: Colors.white),
        hintText: 'Buraya yaz...',
        hintStyle: TextStyle(color: Colors.white70), // Placeholder rengi
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // Normal kenarlık
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ), // Seçildiğindeki kenarlık
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Bu alan boş bırakılamaz';
        }
        return null;
      },
    );
  }
}
