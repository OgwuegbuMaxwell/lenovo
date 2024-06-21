import 'package:flutter/material.dart';



///
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/pages/application/application_page.dart';
import 'package:lenovo/common/values/colors.dart';
import 'package:lenovo/pages/application/bloc/app_blocs.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_blocs.dart';
//import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBlocs(),
        ),
        BlocProvider(
          create: (context) => LaptopDetailsBlocs(),
        ),
        // BlocProvider(
        //   create: (context) => SearchResultBloc(dummyLaptops),
        // ),
      ],
      //create: (context) => AppBlocs(),
      child: ScreenUtilInit(
        designSize: Size(375, 812), // Design size of your app (iPhone X)
        builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lenovo App',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: AppColors.primaryText
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
          ),
          home: const ApplicationPage(),
      ),
      )
    );
  }
}






// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of the application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//             appBarTheme: const AppBarTheme(
//               iconTheme: IconThemeData(
//                 color: AppColors.primaryText
//               ),
//               elevation: 0,
//               backgroundColor: Colors.white,
//             ),
//           ),
//       home: const ApplicationPage(),
//     );
//   }
// }

