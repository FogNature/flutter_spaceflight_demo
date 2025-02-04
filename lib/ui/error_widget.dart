import 'package:flutter/material.dart';

class ErrorT extends StatelessWidget {
  final String errorText;

  const ErrorT({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}
