import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class PageSplashScreen extends StatefulWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  _PageSplashScreenState createState() => _PageSplashScreenState();
}

class _PageSplashScreenState extends State<PageSplashScreen> {

  //do in background
  //initsatte --> proses sebelum view ada
  //state --> proses didalam view
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>PageUtama()
        )));
  }

  //perpindahan dari satu class
  //Navigator
  //push --> berpindah satu class A ke class B
  //pushreplacement
  //pushname
  //pop ---> kembali ke class, class B kembali class A
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.red,
      body: Center(
        child: Image.asset('gambar/logo.png'),

      ),
    );
  }
}
