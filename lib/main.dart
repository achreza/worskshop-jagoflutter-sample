import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:workshopjagoflutter/page_beranda.dart';
import 'package:workshopjagoflutter/page_splashscreen.dart';

//method yang pertama kali d jalankan
void main() {
  runApp(const MyApp());
}

//alamat

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const PageSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//stateless : sedikit (view)
//statefull : dinamis
//keyboard ketik 'st'
//saved atau control s --> simpan atau hot reload
class PageUtama extends StatelessWidget {
  const PageUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text('Project Pertama'),
      // ),
      //appbar : properti
      //Appbar  : widget
      //child : view
      //children : view group (list, row, column, stack)
      body: Container(
          // color: Colors.red,
          // height: 100,

          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset('gambar/logo2.png'),
          Image.asset('gambar/tekslogo.png'),
          SizedBox(
            height: 10,
          ),
          // Container(
          //     child: Text(
          //   'Email Address',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.left,
          // )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Email Address'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Container(child: Text(' Password')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Forgot Password'),
          SizedBox(
            height: 28,
          ),
          MaterialButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Anda Berhasil Login",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageBeranda()));
            },
            color: Colors.red,
            textColor: Colors.white,
            child: Text('Login'),
          ),

          SizedBox(
            height: 15,
          ),
          //selain button, gak ada onpress
          //kita harus bungkus dengan inkwell
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageRegister()));
            },
            child: Text('Belum Punya Akun ? Silahkan Register', style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red
            ),),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.red,),
                SizedBox(width: 10,),
                Icon(Icons.camera)
              ],
            ),
          )
        ],
      )),
    );
  }
}

class PageRegister extends StatelessWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text('Project Pertama'),
      // ),
      //appbar : properti
      //Appbar  : widget
      //child : view
      //children : view group (list, row, column, stack)
      //list == column (kebawah )
      //row == (Kesamping)
      //stack == di tumpuk
      body: Container(
        // color: Colors.red,
        // height: 100,

          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset('gambar/logo2.png'),
              Image.asset('gambar/tekslogo.png'),
              SizedBox(
                height: 10,
              ),
              // Container(
              //     child: Text(
              //   'Email Address',
              //   style: TextStyle(fontWeight: FontWeight.bold),
              //   textAlign: TextAlign.left,
              // )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Email Address',
                    prefixIcon:  Icon(Icons.email),
                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Container(child: Text(' Password')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Forgot Password'),
              SizedBox(
                height: 28,
              ),
              MaterialButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Anda Berhasil Register",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Register'),
              ),

              SizedBox(
                height: 15,
              ),
              //selain button, gak ada onpress
              //kita harus bungkus dengan inkwell
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PageUtama()));
                },
                child: Text('Anda Sudah Punya Akun ? Silahkan Login', style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red
                ),),
              )
            ],
          )),
    );
  }
}

