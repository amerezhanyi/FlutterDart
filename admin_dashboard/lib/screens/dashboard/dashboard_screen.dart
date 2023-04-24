import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
