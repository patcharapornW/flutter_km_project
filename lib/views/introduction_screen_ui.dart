import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home02_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';
class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Sau Hello',
            body: 'Welcome to Thailand',
            image: Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Hello',
            body: 'Welcome to Thailand',
            image: Image.asset(
              'assets/images/pic2.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Yea',
            body: 'Welcome to india',
            image: Image.asset(
              'assets/images/pic3.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Hola',
            body: 'Welcome to spain',
            image: Image.asset(
              'assets/images/pic4.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Yes',
            body: 'Welcome to italy',
            image: Image.asset(
              'assets/images/pic5.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),

        ],
        showBackButton: true,
        skip: Text(
          'ข้าม'
        ),
        showBottomPart: true,
        next: Icon(
          Icons.arrow_forward_ios
        ),
        showDoneButton: true,
        done: Text(
          'หน้าหลัก',
        ),
        onDone: () {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder:(context) => Home02Ui(),
            ),
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}