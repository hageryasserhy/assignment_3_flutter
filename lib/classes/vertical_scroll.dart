import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info_class.dart';

class VertictalScroll extends StatelessWidget {
  final Info info;
  const VertictalScroll({required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(info.image??'')
            ),
            PositionedDirectional(
                end: 0,
                bottom: 1,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: info.active,
                )
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(info.firstName??'',style: TextStyle(color: Colors.white,fontSize:18 ),),
                SizedBox(
                  width: 5,
                ),
                Text(info.lastName??'',style: TextStyle(color: Colors.white,fontSize:18 ),),],
            ),
            Text(info.lastMassage??'',style: TextStyle(color: Colors.white,fontSize:13 ),),
          ],
        ),
        Expanded(
            child: Text(info.time??'',style: TextStyle(color: Colors.white,fontSize:14,),textAlign: TextAlign.end,)),
      ],
    );
  }
}
