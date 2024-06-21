import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenovo/common/widgets/app_bar.widgets.dart';
import 'package:lenovo/pages/application/bloc/app_blocs.dart';
import 'package:lenovo/pages/application/bloc/app_events.dart';
import 'package:lenovo/pages/application/bloc/app_states.dart';
import 'package:lenovo/pages/application/widgets/application_page_widgets.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPagStateState();
}

class _ApplicationPagStateState extends State<ApplicationPage> {
  // index for selecting which screen should display based on bottomNav items
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print("The Index is ${index}");
  }



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, AppStates>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        //appBar: buildAppBar(),
        body: buildPage(state.index),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.index,
          onTap: (value){
            context.read<AppBlocs>().add(TriggerAppEvent(value));
          },
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526480),
          items: bottomTabs,
        ),
      );
    });
  }
}

              