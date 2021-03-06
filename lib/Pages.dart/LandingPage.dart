import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class LandingPage extends StatelessWidget {
  static  String routename= 'landing page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.cyan[100],
                  padding: EdgeInsets.all(15.0)))),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Classroom Scheduler',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hub 1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue[900],
          onPressed: () {
            AlertDialog alertDialog_1 = AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0))),
              backgroundColor: Colors.blue[900],
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w300),
              titlePadding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 40.0),
              title: Center(
                child: Text('Hub Actions'),
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      'Join',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ),
                    onPressed: () {
                      AlertDialog alertDialog_2 = AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          backgroundColor: Colors.lightBlueAccent,
                          titleTextStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300),
                          titlePadding:
                              EdgeInsets.fromLTRB(10.0, 20.0, 60.0, 15.0),
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 0.0),
                          title: Text('Please enter a valid hub code:'),
                          content: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: 'Input code here',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                      )),
                                ),
                                SizedBox(height: 30.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.red[700]),
                                        ),
                                        onPressed: () =>
                                            Navigator.pop(context)),
                                    TextButton(
                                        child: Text(
                                          'Join',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.green[800]),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()),
                                          );
                                        })
                                  ],
                                )
                              ],
                            ),
                          ));
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alertDialog_2;
                        },
                        barrierDismissible: false,
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Create',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ),
                    onPressed: () {
                      AlertDialog alertDialog_3 = AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          backgroundColor: Colors.lightBlueAccent,
                          titleTextStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300),
                          titlePadding:
                              EdgeInsets.fromLTRB(10.0, 20.0, 60.0, 15.0),
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 0.0),
                          title: Text('Please enter a hub name:'),
                          content: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: 'Input name here',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                      )),
                                ),
                                SizedBox(height: 30.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.red[700]),
                                        ),
                                        onPressed: () =>
                                            Navigator.pop(context)),
                                    TextButton(
                                        child: Text(
                                          'Create',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.green[800]),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()),
                                          );
                                        })
                                  ],
                                )
                              ],
                            ),
                          ));
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alertDialog_3;
                        },
                        barrierDismissible: false,
                      );
                    },
                  ),
                ],
              ),
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alertDialog_1;
              },
              barrierDismissible: true,
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
