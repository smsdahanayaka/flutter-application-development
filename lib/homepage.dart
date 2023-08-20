import 'package:flutter/material.dart';
import 'package:mentalhealthapp/utill/emoticon_face.dart';

import 'package:mentalhealthapp/utill/list_execises.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final  _searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "home")
      ]),
     backgroundColor: Colors.blue[900],
      body: SafeArea(
        child:  Column(
          children: [
              Container(
                child: Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal:30),
                    child:Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [

                            Column(
                              //  Hi Shan
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Hi, Shan..!",
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize:24.00,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  Text("20 Aug 2023",style: TextStyle(
                                    color: Colors.white,fontSize: 15.00,
                                  ),
                                  ),
                                ]
                            ),

                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(10.00)
                              ),
                              child: IconButton(onPressed: ()=>{},
                                  icon:const Icon(Icons.notifications,color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 25
                        ),

                        //Search bar
                        Container(

                          padding: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: "search",
                              prefixIcon: IconButton(onPressed: ()=>{
                                //perform the search here
                              },
                                  icon: Icon(
                                    Icons.search,
                                    color:Colors.blue[300] ,
                                  )),
                              suffixIcon:IconButton(onPressed: ()=>{
                                _searchController.clear()
                              },
                                  icon: Icon(
                                    Icons.clear,
                                    color:Colors.blue[300] ,
                                  )),
                            ),

                          ),
                        ),
                        SizedBox(
                            height: 25
                        ),
                        //how do you feel
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                            Text("How do you feel?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )),
                            Icon(
                                Icons.more_horiz,
                                color: Colors.white
                            ),
                          ],
                        ),

                        SizedBox(
                            height: 25
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // bad
                            Column(
                              children: const [
                                EmoticonFace(img: "🤧"),
                                SizedBox(
                                    height: 10
                                ),
                                Text("Bad",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            ),

                            // fine
                            Column(
                              children:const [
                                EmoticonFace(img: "🤗"),
                                SizedBox(
                                    height: 10
                                ),
                                Text("Fine",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            // well
                            Column(
                              children:const [
                                EmoticonFace(img: "😜"),
                                SizedBox(
                                    height: 10
                                ),
                                Text("Well",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            // excellent
                            Column(
                              children:const [
                                EmoticonFace(img: "🫡"),
                                SizedBox(
                                    height: 10
                                ),
                                Text("Excellent",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),

                      ],
                    ) ),
              ),
            //greating profile
            
            Expanded(
                child:Container(
                  padding: EdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Exercises
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Exercises",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    //Listview of exercises


                    Expanded(child:ListView(
                      children:[
                        ListViewPage(
                          icon: Icons.favorite,
                          exTitle: "Speaking Skills",
                          subTitle: 12,
                          color: Colors.orange[500],
                        ),
                        const ListViewPage(
                          icon: Icons.contacts,
                          exTitle: "Discuss Skills",
                          subTitle: 16,
                          color: Colors.blueAccent,
                        ),
                        ListViewPage(
                          icon: Icons.library_books,
                          exTitle: "Reading Skills",
                          subTitle: 18,
                          color: Colors.red[400],
                        ),
                        const ListViewPage(
                          icon: Icons.add_card,
                          exTitle: "Add details Skills",
                          subTitle: 16,
                          color: Colors.deepPurpleAccent,
                        ),



                      ],
                    ) )



                  ],
                ),
              )
            )

          ],
        ),

      ),
    );
  }
}
