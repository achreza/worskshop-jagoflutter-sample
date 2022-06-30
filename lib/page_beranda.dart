import 'package:flutter/material.dart';

class PageBeranda extends StatelessWidget {
  const PageBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Beranda'),
        backgroundColor: Colors.red,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Image.asset('gambar/logo2.png', height: 100, width: 100,),
            Text('Welcome'),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
            )
          ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label : 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label : 'Bussiness'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label : 'School'
          ),
        ],
      ),
    );
  }
}
