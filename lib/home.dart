import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String name = "سبحان الله";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (_counter == 33) {
        name = "الحمد لله";
      }
      if (_counter == 66) {
        name = "الله اكبر";
      }
      if (_counter == 100) {
        name = "لا إله إلا الله";
      }
      if (_counter == 133) {
        name = "استغفر الله";
      }
      if (_counter == 166) {
        name = "اللهم صلي على سيدنا محمد";
      }
      if (_counter == 200) {
        _counter = 0;
        name = "سبحان الله";
      } else {
        _counter += 0;
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى",
          style: TextStyle(
            fontFamily: 'ElMessiri',
            color: Colors.white,
          ),
        )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/isla.png',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/isla.png',
              ),
              fit: BoxFit.cover),
          color: Colors.amber,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "$name ",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 2,
                              color: Colors.yellow,
                              offset: Offset(1, 1),
                            )
                          ],
                          fontFamily: 'Mada',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 33),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          //height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 9),
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/isla.png',
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'عدد التسبيحات  ',
                                style: TextStyle(
                                    fontFamily: 'Mada',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "$_counter",
                        style: TextStyle(
                            fontFamily: 'Mada',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.black, offset: Offset(2, 2))
                            ]),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/isla.png',
                                ),
                                fit: BoxFit.none),
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.black,
                                  offset: Offset(3, 4))
                            ]),
                        child: FlatButton(
                          height: 150,
                          minWidth: 150,
                          splashColor: Colors.amber,
                          // color: Colors.pink,
                          onPressed: _incrementCounter,
                          child: Text(
                            "اضغط",
                            style: TextStyle(
                                fontFamily: 'Mada',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 4),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //floatingActionButton:
    );
  }
}

Widget textName({String name, Color colors, Color colorsS, double fontS}) {
  return Text(
    name,
    style: TextStyle(
        color: colors,
        fontFamily: 'ElMessiri',
        fontSize: fontS,
        shadows: [Shadow(color: colorsS, offset: Offset(1, 2))]),
  );
}
