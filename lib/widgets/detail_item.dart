import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String detail;

  DetailItem({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.blue),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              detail,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
