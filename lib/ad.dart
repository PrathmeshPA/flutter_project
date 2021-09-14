import 'package:flutter/material.dart';

class abc extends StatefulWidget {
  
  
  @override
  _abcState createState() => _abcState();
}

class _abcState extends State<abc> {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: [
              
              UserAccountsDrawerHeader(
                accountName: Text("prahmesh aitawade"),
                 accountEmail: Text("prathemesh@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                 ),


                 ),
                //  FloatingActionButton(onPressed: (){ 
                //    Text("home");
                //    setState(() {
                     
                //    });
                //  }),
                 ListTile(
                   leading: Icon(Icons.home),
                   title: Text("Home"),
                 ),


                 ListTile(
                   leading: Icon(Icons.dashboard),
                   title: Text("Dashboard")
                   ,
                 ),
                 ListTile(
                   leading: Icon(Icons.person),
                   title: Text("Account"),
                   subtitle: Text("name"),
                   trailing: Icon(Icons.edit),

                 ),
                 ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Gmail"),
                  subtitle: Text("prathmesh@gmail.com"),
                  trailing:Icon(Icons.send)
                 ),
                 ListTile(
                   leading: Icon(Icons.share),
                   title: Text("Share"),

                 ),
                 ListTile(
                   leading: Icon(Icons.report),
                   title: Text("Report"),
                 )
            ],
          )
            
          ,
    );
  }
}