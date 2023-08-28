import 'package:flutter/material.dart';
import '../Modal/User.dart';
import 'userPage.dart';

class UserScreen extends StatefulWidget {
  final User user;
  const UserScreen({Key? key,required this.user}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // actions: [
        //
        //     IconButton(onPressed: ()=>{
        //       Navigator.push(context, MaterialPageRoute(builder: (context) => Demo(),))
        //     }, icon: Icon(Icons.arrow_back))
        //
        // ],
      ),
      body:Center(
        child:Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(widget.user.name,style: TextStyle(fontSize: 20)),

            ),
            ClipOval(   
              child: Image.network(widget.user.image),
            ),
          ],
        )

       ),
    );
  }
}
