import 'package:flutter/material.dart';
import '../controller/service.dart';
import 'singleUserPage.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  RestApiService apiService=new RestApiService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    apiService.getUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),

      ),
      body: Column(
        children: [
          Expanded(
              child:FutureBuilder(
                  future: apiService.getUsers(),
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                      return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => UserScreen(
                                    user:snapshot.data![index],
                                  )));
                              },
                              child:  Container(
                                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                padding:EdgeInsets.all(5),
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow:[BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 10,
                                    offset: Offset(2, 5),
                                  ),
                                  ],
                                ),
                                child: Container(
                                  margin:EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                  padding:EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                                  child: ListTile(
                                    title: Text(snapshot.data![index].name ??"",style: TextStyle(color:Colors.black,fontSize: 18)),
                                    subtitle: Text(snapshot.data![index].city ??"",style: TextStyle(fontSize: 15,color: Colors.black)),
                                    leading: ClipOval(
                                      child: Image.network(snapshot.data![index].image,fit:BoxFit.scaleDown,width: 70,height: 70,),
                                    ),
                                    trailing: IconButton(onPressed: ()=>{

                                    }, icon:Icon(Icons.favorite_border)),
                                  ),
                                ),
                              ),
                            );

                          },);
                  }else{
                    return Container(
                      child: Center(
                        child: Text("Loading...",style: TextStyle(fontSize: 15,color: Colors.black),),
                      ),
                    );
                  }
                },
              ),

          ),
        ],
      ),
    );
  }
}
