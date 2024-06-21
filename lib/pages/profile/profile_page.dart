import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/pages/profile/widgets/profile_page_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Container(
          child: Column(
            children: [
              profilePageBar(),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 10.h,),
                    profilePageShopCard(context),
                    profilePageServiceCard(),
                    profilePageAccountCard(),
                    profilePageCommunityCard(),
                    SizedBox(height: 10.h,),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}






