import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final String message;

  Progress({
    this.message = 'loading',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: CircularProgressIndicator(),
          ),
          Text(message, style: TextStyle(fontSize: 16.0),)
        ],
      ),
    );
  }
}
