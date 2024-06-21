


import 'package:flutter/material.dart';

Widget recentlyViewedPageBar(BuildContext context) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const Text(
            "Recently Viewed",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox.shrink(),
          //
        ],
      ),
    ),
  );
}






