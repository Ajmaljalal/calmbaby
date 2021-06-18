import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.deepPurpleAccent,
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AvatarGlow(
              endRadius: 150.0,
              child: SizedBox(
                width: 150.0,
                child: SvgPicture.asset(
                  'assets/microphone.svg',
                  width: 150.0,
                ),
              ),
            ),
            Container(
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40.0,
                    child: SvgPicture.asset(
                      'assets/previouse.svg',
                      width: 40.0,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                    child: SvgPicture.asset(
                      'assets/play.svg',
                      width: 50.0,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                    child: SvgPicture.asset(
                      'assets/next.svg',
                      width: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
