import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
=======
import 'setlocation.dart';
import 'setFilter.dart';
import 'mainPageMap.dart';
import 'mainListBoard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(      // 폰트 사이즈 일정하게 하기
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
>>>>>>> 39b67fa67318d3223cebeab55ffe09d3adcd4173

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
=======
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('위치 설정'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LocationPage()));
                  },
                ),
                ElevatedButton(
                  child: Text('필터'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Filter()));
                  },
                ),
                ElevatedButton(
                  child: Text('메인페이지-지도'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => MainPageMap()));
                ElevatedButton(    
                  child: Text('리스트'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => MainListBoard()));
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}

>>>>>>> 39b67fa67318d3223cebeab55ffe09d3adcd4173
