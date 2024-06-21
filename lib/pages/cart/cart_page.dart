import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/cart/cart_controller.dart';
import 'package:lenovo/pages/cart/widgets/cart_page_widgets.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_blocs.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_states.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Laptop> cartItems = getCartItems();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: BlocBuilder<LaptopDetailsBlocs, LaptopDetailsStates>(
          builder: (context, state) {
            final cartLaptopIds = state.carts;
            final cartLaptops = dummyLaptops.where((laptop) => cartLaptopIds.contains(laptop.id)).toList();
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cartPageBar(context),
                  SizedBox(height: 15.h,),
                  cartLaptopIds.isEmpty 
                      ? Container(
                          margin: EdgeInsets.only(top: 30.h),
                          child: const Center(
                            child: Text('You have no Laptop in your cart.'),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: cartLaptopIds.length,
                            itemBuilder: (context, index) {
                              final laptop = cartLaptops[index];
                              return buildCartItem(context: context, carItem: laptop);
                            },
                          ),
                        ),
                ],
              ),
            );

          },
        ),
        
        /*
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cartPageBar(context),
              Container(
                margin: EdgeInsets.only(top: 15.h, left: 20.w, bottom: 15.h),
                child: Text(
                  "CART(${cartItems.length})", 
                  style: Styles.headLineStyle3,
                )
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartItems[index];
                    return buildCartItem(context: context, carItem: cartItem);
                  },
                ),
              )
            ],
          ),
        ),
        */
      ),
    );
  }
}