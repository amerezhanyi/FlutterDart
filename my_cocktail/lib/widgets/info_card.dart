import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String body;

  const InfoCard({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 380,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline3,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(body),
              ),
            )
          ],
        ),
      ),
    );
  }
}
