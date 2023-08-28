import 'package:flutter/material.dart';
import 'package:mentalhealthapp/mvc/view/homepage.dart';

import 'userPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

 TextEditingController _userController=new TextEditingController();
 TextEditingController _passwordController=new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page", style: TextStyle(fontSize: 20.0)),
        leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //login text
              Container(
                padding: EdgeInsets.only(top: 20,bottom: 20),
                child: const Text("Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.00,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 20),
                alignment:Alignment.center ,
                child: Image.network('https://img.freepik.com/free-icon/user_318-414374.jpg',width:100,),
              ),
              Container(
                alignment: Alignment.center,
                child: TextFormField(

                  controller: _userController,
                  decoration:const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "User",
                    hintText: "enter user name",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: TextFormField(

                  controller: _passwordController,
                  decoration:const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Password",
                    hintText: "enter password",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(onPressed: clickBtnAction, child:Text("log in")),
              )
            ],
          ),
        ),
      ),
    );
  }
void clickBtnAction(){
    if(_userController.text=="shan123"&& _passwordController.text=="1234"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }else{
      alertDialogBox(context);
    }
}

void alertDialogBox(BuildContext context){
    Widget okbtn=ElevatedButton(onPressed:() {Navigator.pop(context);}, child:Text("ok"),);

    AlertDialog alertDialog=AlertDialog(
      title: Text("Error"),
      content: Text("Wrong user name or password"),
      actions: [
        okbtn
      ],
    );

    showDialog(context: context, builder: (context) {
      return alertDialog;
    });
}

}
