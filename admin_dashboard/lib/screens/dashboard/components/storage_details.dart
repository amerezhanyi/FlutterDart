import 'package:flutter/material.dart';

import 'chart_box.dart';
import 'storage_card.dart';
import '../../../constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          const ChartBox(),
          const StorageCard(
            title: "Document Files",
            svgSrc: "assets/icons/Documents.svg",
            amountOfFiles: "1.3",
            numOfFiles: 109,
          ),
          const StorageCard(
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
            amountOfFiles: "0.4",
            numOfFiles: 2,
          ),
          const StorageCard(
            title: "Other Files",
            svgSrc: "assets/icons/folder.svg",
            amountOfFiles: "3.1",
            numOfFiles: 691,
          ),
          const StorageCard(
            title: "Unknown Files",
            svgSrc: "assets/icons/unknown.svg",
            amountOfFiles: "13.0",
            numOfFiles: 2992,
          ),
        ],
      ),
    );
  }
}
