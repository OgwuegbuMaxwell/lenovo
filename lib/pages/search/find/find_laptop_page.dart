import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lenovo/pages/search/find/widgets/find_laptop_widgets.dart';


class FindLaptopPage extends StatefulWidget {
  const FindLaptopPage({super.key});

  @override
  State<FindLaptopPage> createState() => _FindLaptopPageState();
}

class _FindLaptopPageState extends State<FindLaptopPage> {
  final searchController = TextEditingController();



  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

    void _handleTap() {
    // Unfocus the text field when tapping outside of it
    FocusScope.of(context).unfocus();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).unfocus();
    });
    
  }



  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: GestureDetector(
        onTap: _handleTap,
        child: Scaffold(
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                findLaptopBarWithTextField(
                  context:context, 
                  hintText: "what are you looking for", 
                  textType:"text", 
                  iconName: FluentIcons.search_12_regular,
                  searchController: searchController,
                ),
                //
                Container(),
                //
                Divider(
                  color: Colors.grey[200],
                  thickness: 3,
                ),
                //
                searchPageQuickLinks(context: context),
                
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}