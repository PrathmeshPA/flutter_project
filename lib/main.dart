

import 'package:app1/ad.dart';
import 'package:app1/page/api.dart';
import 'package:app1/page/login.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
debugShowCheckedModeBanner:false,
title: "logian",
home:loginpage(),
theme: ThemeData(
  primaryColor: Colors.red),
  
// initialRoute: "/",
// routes: {
//   "/":(context)=>loginpage(),
//   "/myapp":(context)=>myapp()
// },
  ));
}

class myapp extends StatefulWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("MyFristApp"),
        
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
        ),
        drawer: abc(),
        

        
        body: SingleChildScrollView(
          child: Center(
        
            
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/new.jpg",),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter name",
                        labelText: "Name"
                      ),
                      
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        hintText: "mobile"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email Id",
                      labelText: "Email Id"
                      ),
        
                    ),
                    ElevatedButton(onPressed: (){

                      Navigator.push(
                            context,MaterialPageRoute(builder: (context)=> api()),
                          );
                    }, 
                    child: Text("Submit") ),
                    
                  ],
                ),
              ) ,
        
            ),
        
            
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          
          },
          child: Icon( Icons.arrow_back,
          
          ),
          backgroundColor: Colors.red,
          
        

        ),
        
        
    );
      
    
  }
}