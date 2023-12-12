import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'instagram classes/instagram_info.dart';
import 'instagram classes/instagrame code.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? Key}): super(key:Key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text('Instagram',style: TextStyle(fontSize: 23,color: Colors.white),),
              Icon(CupertinoIcons.chevron_down,color: Colors.white,)
            ],
          ),
          actions: [
            Icon(Icons.add_box_outlined,color: Colors.white,),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Icon(CupertinoIcons.heart,color: Colors.white,),
                PositionedDirectional(
                  top: 3,
                  end: 0,
                  child: CircleAvatar(
                    radius:3,
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack
              (
                children:[
                Icon(Icons.message,color: Colors.white,),
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: CircleAvatar(
                      radius:6,
                      backgroundColor: Colors.red,
                      child: Text('6',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                  )
            ]
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: ListView.separated(itemBuilder:(context, index) => Instagrame_code(instaInfo: list[index],),
        separatorBuilder: (context, index) => SizedBox(
          height: 15,
              ),
          itemCount: list.length,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
                // icon:Icon(CupertinoIcons.house_fill),
               icon: Column(children: [Icon(CupertinoIcons.house_fill),CircleAvatar(
                radius:3,
                backgroundColor: Colors.red,
               ),],),
              label: ''
            ),
            BottomNavigationBarItem(
              // icon:Icon(CupertinoIcons.house_fill),
                icon: Column(children: [Icon(CupertinoIcons.search),],),
                label: ''
            ),
            BottomNavigationBarItem(
              // icon:Icon(CupertinoIcons.house_fill),
                icon: Column(children: [Icon(CupertinoIcons.videocam),],),
                label: ''
            ),
            BottomNavigationBarItem(
              // icon:Icon(CupertinoIcons.house_fill),
                icon: Column(children: [Icon(CupertinoIcons.bag),]),
                label: ''
            ),
            BottomNavigationBarItem(
              // icon:Icon(CupertinoIcons.house_fill),
                icon: Column(children: [
                  CircleAvatar(
                    radius:10,

                    backgroundImage: Image.network('https://bettercollective.com/wp-content/uploads/2023/09/Britt-Boskov.jpg').image),CircleAvatar(
                  radius:3,
                  backgroundColor: Colors.red,
                ),],),
                label: ''
            ),
          ],
        ),
      ),
    );
  }
}
