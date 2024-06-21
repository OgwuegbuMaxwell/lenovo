import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/search/result/search_result_controller.dart';
import 'package:lenovo/pages/search/result/widgets/search_result_widgets.dart';

class SearchResultPage extends StatelessWidget {
  final String query;
  const SearchResultPage({
    super.key, 
    required this.query,
    });

  @override
  Widget build(BuildContext context) {
    final searchQuery = SearchQuery(query);
    final matchingLaptops = searchQuery.find();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              searchResultPageBar(context),
              Expanded(
                child: matchingLaptops.length > 0 ?  ListView.builder(
                  itemCount: matchingLaptops.length,
                  itemBuilder: (context, index) {
                    final laptop = matchingLaptops[index];
                    print(matchingLaptops);
                    return buildSearchResult(context: context, laptop: laptop, query: query);
                  },
                ) 
                : 
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const Center(
                    child: Text("We're sorry, but we couldn't find any laptops that match your search"),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
