import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(60.0),
//           // here the desired height
//           child: AppBar(
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               title: Text(
//                   style: GoogleFonts.mulish(
//                     color: Colors.green,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18,
//                   ),
//                   '''
// Zahir Mobile
// Dev Challenge
// ''')),
//           // appBar: AppBar(

//           //   ),
//           // centerTitle: false,
//         ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 328,
              margin: EdgeInsets.only(left: 0, top: 80, right: 0, bottom: 0),
              child: Text(
                  style: GoogleFonts.mulish(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  '''
Zahir Mobile
Dev Challenge
'''),
            ),
            Container(
              width: 400,
              height: 258,
              padding: new EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
              child: Card(
                borderOnForeground: false,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Image(
                      image: AssetImage("images/Avatar.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Zahir Putra',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Image(
                        image: AssetImage("images/update.png"),
                        width: 18,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "085258894396",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black38),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Flutter, React Native",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black38),
                  ),
                ]),
              ),
            ),
            Container(
                width: 400,
                height: 75,
                padding: new EdgeInsets.all(4.0),
                margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text("Location finding challenge"),
                        Spacer(), // use Spacer
                        Image(
                          image: AssetImage("images/vector.png"),
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  // child: Row(
                  //   children: <Widget>[
                  //     // Padding(
                  //     //   padding: const EdgeInsets.all(4.0),
                  //     //   child: Row(
                  //     //     children: [
                  //     //       Text("Location finding challenge"),
                  //     //       Spacer(), // use Spacer
                  //     //       Text("2"),
                  //     //     ],
                  //     //   ),
                  //     // )
                  //   ],
                  // ),
                ))
          ],
        )),
      ),
    );
  }
}
