import 'package:flutter/material.dart';

class Info {
  String? image;
  String? firstName;
  String? lastName;
  String? lastMassage;
  String? time;
  Color? active;
  Info({this.image, this.firstName, this.lastName, this.lastMassage,this.time,this.active});
}

List<Info> list = [
  Info(
      image:'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
      firstName:'mohamed',
      lastName:'ismail',
      lastMassage:'please watch the video',
      time:'9:20 PM',
      active:Colors.green
  ),
  Info(
      image:'https://wallpapers.com/images/featured/cute-aesthetic-profile-pictures-pjfl391j3q0f7rlz.jpg',
      firstName:'Maryam',
      lastName:'Yasser',
      lastMassage:'Hello',
      time:'10:30 AM',
      active:Colors.green
  ),
  Info(
      image:'https://wallpapers.com/images/hd/profile-picture-f67r1m9y562wdtin.jpg',
      firstName:'Alaa',
      lastName:'Ismail',
      lastMassage:'good morning',
      time:'9:00 AM',
      active:Colors.red
  ),
  Info(
      image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGb8PmEaRgeXshs4ycQC8wyYl8h6RffDbg-A&usqp=CAU',
      firstName:'Nada',
      lastName:'Mahmoud',
      lastMassage:'byee',
      time:'1:00 AM',
      active:Colors.red
  ),
  Info(
      image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq5eMRxkFIQMnfAe5p_L-BJUdf6xv6CvD0zw&usqp=CAU',
      firstName:'arwa',
      lastName:'Yasser',
      lastMassage:'good night',
      time:'12:00 AM',
      active:Colors.green
  ),
  Info(
      image:'https://images.prismic.io/profilephotos/15306430-5a6d-4436-80eb-dcf42533233d_wellington-new-zealand-profile-photos-portrait-photographer-models-headshots-dashing.jpg?ixlib=vue-2.9.0&auto=format%2C%20compress',
      firstName:'omar',
      lastName:'ismail',
      lastMassage:':)',
      time:'4:00 PM',
      active:Colors.red
  ),
  Info(
      image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzHMDlwRCHOHZP_tX7jRYNxV8W8MpNEog45w&usqp=CAU',
      firstName:'shahed',
      lastName:'yasser',
      lastMassage:'hello',
      time:'2:00 PM',
      active:Colors.red
  ),
  Info(
      image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjML1sDc9-mtLEizyN9zEue55tACbCwMCXEw&usqp=CAU',
      firstName:'yasser',
      lastName:'mohamed',
      lastMassage:'have fun',
      time:'6:00 PM',
      active:Colors.green
  ),
  Info(
      image:'https://buffer.com/library/content/images/2022/03/amina.png',
      firstName:'hend',
      lastName:'tamer',
      lastMassage:'have fun',
      time:'9:00 PM',
      active:Colors.green
  ),
];
