import 'package:flutter/material.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/recently_viewed/widgets/recently_viewed_page_widgets.dart';

class RecentlyViewedPage extends StatelessWidget {
  final List<Laptop> laptops;
  const RecentlyViewedPage({super.key, required this.laptops});

  @override
  Widget build(BuildContext context) {
    //List<Laptop> recentlyViewedLaptops = getAllRecentlyViewedItems();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              recentlyViewedPageBar(context),
              Expanded(
                child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 16 / 20,
                        ),
                        itemCount: laptops.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LaptopDetails(
                                    laptop: laptops[index])),
                              );
                            },
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      laptops[index].imageUrl,
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  //borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          );
                        }
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
