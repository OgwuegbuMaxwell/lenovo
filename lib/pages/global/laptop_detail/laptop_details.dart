import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_blocs.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_states.dart';
import 'package:lenovo/pages/global/laptop_detail/widgets/laptop_details_widgets.dart';
import 'package:lenovo/pages/global/widgets/expandable_description.dart';

class LaptopDetails extends StatelessWidget {
  final Laptop laptop;
  const LaptopDetails({super.key, required this.laptop});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<LaptopDetailsBlocs, LaptopDetailsStates>(
          builder: (context, state) {
            final isFavorite = state.favoriteLaptops.contains(laptop.id);
            final isInCart = state.carts.contains(laptop.id);
            return ListView(
              children: [
                laptopDeatilsPageBar(context, laptop.name),
                imageSlider(context: context, state: state, laptop: laptop),
                displayLaptopName(laptop),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: ExpandableDescription(description: laptop.description,),
                ),
                buildCartAndFavoriteBtn(context: context, laptopId: laptop.id, isFavorite: isFavorite, isInCart: isInCart),
                systemSpecHeading(),
                buildSystemSpecs(laptop),
                findResellerBtn(context: context),
              ],
            );
          },
        ),
      ),
    );
  }
}
