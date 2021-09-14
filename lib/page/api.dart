import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:get/get.dart';

class api extends StatefulWidget {
  
  
  @override
  _apiState createState() => _apiState();
}

class _apiState extends State<api> {

  

  List product = [];

    Future getdata() async {
    var rec= await http.get(Uri.parse('https://restcountries.eu/rest/v2/all'));
    if (rec.statusCode==200)
    setState(() {
     product = jsonDecode(rec.body);
    });
    
    print(product);
    return product;

  // final response = await http.get(Uri.parse('http://127.0.0.1/getbal.php'));
  // print(json.decode(response.body));

  }

  @override
  void initState() {
    
    super.initState();
    getdata();
  
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("ApiData"),
    ),
     body:
     //Center(child: Text(getdata.toString())),
     
    ListView.builder(
      itemCount: product.length,
      itemBuilder: (context,index){
          

      return ListTile(
        leading: Text(product[index]['name']),
        title: Text(product[index]['capital']) ,
        );
      }
    )
    );

    
    
    
  }
}