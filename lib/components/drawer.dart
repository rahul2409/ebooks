import 'package:flutter/material.dart';
class DrawerBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // hamburger drawer icon generated with the details printed in the drawer header 
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Color.fromRGBO(0, 0, 0, 0.8), Colors.blue])),
            accountName: Text('rahul'), 
            accountEmail: Text('rahulnandrajog99@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                child: new Icon(Icons.person,color: Colors.white,),
              )
            ),
            // use decoration : boxdecoration to change the styles of the blue drawer box  
            ),
          // end of header and its contents 
          // starting with the main body of the drawer 
          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('Home'),
                leading: new Icon(Icons.home,color: Colors.blue,),
              ),
          ), 

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('About us'),
                leading: new Icon(Icons.info,color: Colors.blue,),
              ),
          ),

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('Books'),
                leading: new Icon(Icons.book,color: Colors.blue,),
              ),
          ),

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('My Books'),
                leading: new Icon(Icons.library_books,color: Colors.blue,),
              ),
          ),

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('Categories'),
                leading: new Icon(Icons.dashboard,color: Colors.blue,),
              ),
          ),

          Divider(),

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('Settings'),
                leading: new Icon(Icons.settings,color: Colors.grey,),
              ),
          ),

          InkWell(
              onTap: () {
                
              },
              child: ListTile(
                title: new Text('Contact us'),
                leading: new Icon(Icons.phone,color: Colors.green,),
              ),
          ),
        ]
      )
    );
  }
}

