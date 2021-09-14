import 'package:app1/main.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final userName=TextEditingController();
  final password=TextEditingController();

  GlobalKey<FormState> fromk=GlobalKey<FormState>(); 

  void validate(){
    var currentState = fromk.currentState;
    if(currentState!.validate()){
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogianPage")),
        body: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Center(
              child: Center(
                child: Card(
                  
                  child: Form(
                    key: fromk ,
                    child: Column(
                      children: [
                        
                        Center(
                          child: Form(child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset("assets/img.jpg",width: 300,height: 300,),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "User Name",labelText: "Enter username"
                                  ),
                                  validator: (value){
                                    if(value! . isEmpty){
                                      return "required";
                                    }else{
                                      return null  ;
                                  }                                                                                                
                                    
                                  },
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    
                                    hintText: "Password",labelText:"Enter Password"
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(onPressed: (){
                          validate();
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context)=> myapp()),
                          );
                        },
                        child: Text("Sign In"),
                        color: Colors.blue,
                        textColor: Colors.white,
                        )
                      ],
                                  
                            ),
                  ),
                ),
              ),
            ),),
        ),
    );
  }
}