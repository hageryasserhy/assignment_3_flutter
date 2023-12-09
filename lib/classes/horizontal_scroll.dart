import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info_class.dart';

class HerizontalScroll extends StatelessWidget {
  final Info info;
  const HerizontalScroll({required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(info.image?? '')
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
          height: 10,
        ),
        Text(info.firstName??'',style: TextStyle(color: Colors.white,fontSize:10 ),)
      ],
    );
  }
}
