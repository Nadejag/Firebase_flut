import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarCard extends StatelessWidget {
  const AppBarCard({
    super.key,
    required this.width,
    required this.title,
    this.icon, this.color, // optional icon
  });

  final double width;
  final String title;
  final IconData? icon;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(),
        elevation: 1, // shadow effect
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black.withOpacity(0.7),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: width * 0.04),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            if (icon != null)...[
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
