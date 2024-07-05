
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mentalmandra/Screen/SplashScreen/FirstScreen.dart';
import 'package:mentalmandra/firebase_options.dart';





import 'package:sizer/sizer.dart';
double width = 3.8;
 double height = 8.9;
 double fontsize = 1.2;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( mentalmandra());
}

class mentalmandra extends StatelessWidget {
   mentalmandra({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return 
    Sizer(
      builder: (context,Orientation,DeviceType) {
        return MaterialApp(home:FirstScreen());
      }
    );
  }
}
 