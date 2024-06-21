
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/pages/reseller/widgets/reseller_page_widgets.dart';

class ResellerPage extends StatelessWidget {
  const ResellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Where to Buy",
          style: TextStyle(
            color: Styles.textColor,
          ),
        ),
      ),
      body: Column(
        children: [
          displayBanner(),
          displaySimulators(),
        ],
      ),
    );
  }
}