import 'package:flutter/material.dart';
class ListViewPage extends StatelessWidget {
  final icon;
  final String exTitle;
  final int subTitle;
  final color;

  const ListViewPage( {
    Key? key,
    required this.icon,
    required this.exTitle,
    required this.subTitle,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      padding:EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),

      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            margin:EdgeInsets.all(5),
            padding: EdgeInsets.all(10),

            child: Icon(icon,color: Colors.white),
          ),
          SizedBox(width: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          exTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                      const SizedBox(height: 5,),
                      Text(
                          subTitle.toString()+"16 Exercises",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color:Colors.grey[600] ,
                          )
                      ),
                    ],
                  ),
                ),
// Icon(Icons.more_horiz),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

