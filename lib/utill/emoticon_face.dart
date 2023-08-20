import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String img;
  const EmoticonFace(
      {Key? key,
        required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:Colors.blue[400],
        borderRadius: BorderRadius.circular(10)
      ),
      
      child:Center(
        child:
        Text(
            img,
            style: const TextStyle(
              fontSize: 25,
            )),
      )

      );

  }
}

    